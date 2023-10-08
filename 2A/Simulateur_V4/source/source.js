function downloadPoints() {
    let fileContents = "";

    let today = new Date();
    let dd = String(today.getDate()).padStart(2, '0');
    let mm = String(today.getMonth() + 1).padStart(2, '0');
    let yyyy = today.getFullYear();
    today = dd + '/' + mm + '/' + yyyy;
    let time = String(new Date().getHours()).padStart(2, '0') + 
         ":" + String(new Date().getMinutes()).padStart(2, '0');

    let jsonLocalData = localStorage.getItem("strats");
    let savedData = JSON.parse(jsonLocalData);
    let name = savedData.strats[savedData.openedStategy].name;

    fileContents += `/*
 * strategie.c
 *
 * "${name}"
 *
 * Generated by Ares ENSEA Simulator.
 * https://ares.asso-ensea.fr/simulateur/
 * 
 * Created at ${time} on ${today}.
 */

#include <strategie.h>

int nb_points = ${points.length};

CONSIGNE consigneBleu[${points.length}] = {
    `;

    let blueSide = (points.length == 0) || (points[0].x < 1500)

    if (!blueSide) {
        applySymetry()
    }

    points.forEach(p => {
        let dir = p.r?"BACKWARD":"FORWARD";
        let actionneurBouee = "{ ";
        actionneurBouee += p.actions.nw?"TRUE, ":"FALSE, ";
        actionneurBouee += p.actions.ne?"TRUE, ":"FALSE, ";
        actionneurBouee += p.actions.sw?"TRUE, ":"FALSE, ";
        actionneurBouee += p.actions.se?"TRUE }":"FALSE }";
        let actionneurManche = p.actions.bras?"TRUE":"FALSE";
        
        fileContents += `{\n`
        fileContents += `      .x = ${p.x}, .y = ${2000-p.y}, .dir = ${dir}, \n`
        fileContents += `      .pinces = ${actionneurBouee},\n`
        fileContents += `      .bras = ${actionneurManche}\n    }, `
    })

    fileContents = fileContents.slice(0, -2) + "\n";

    fileContents += `};

CONSIGNE consigneJaune[${points.length}] = {
    `

    points.forEach(p => {
        let dir = !p.r?"BACKWARD":"FORWARD";
        let actionneurBouee = "{ ";
        actionneurBouee += p.actions.sw?"TRUE, ":"FALSE, ";
        actionneurBouee += p.actions.se?"TRUE, ":"FALSE, ";
        actionneurBouee += p.actions.nw?"TRUE, ":"FALSE, ";
        actionneurBouee += p.actions.ne?"TRUE }":"FALSE }";
        let actionneurManche = p.actions.bras?"TRUE":"FALSE";
        
        fileContents += `{\n`
        fileContents += `      .x = ${3000-p.x}, .y = ${2000-p.y}, .dir = ${dir}, \n`
        fileContents += `      .pinces = ${actionneurBouee},\n`
        fileContents += `      .bras = ${actionneurManche}\n    }, `
    })

    if (!blueSide) {
        applySymetry()
    }

    fileContents = fileContents.slice(0, -2) + "\n};";

    saveStrings([fileContents], "strategie", "c", true);
}