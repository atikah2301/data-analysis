using System.IO;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DataImporter : MonoBehaviour // inheritence
{
    // Start is called before the first frame update
    void Start()
    {
        string cocaColaPath = @"C:\Users\atika\Downloads\KO.csv"; // @ takes the literal meaning of the string without special string characters (e.g. \n for new line, \t for new tab)

        string[][] cocaColaData = ReadStockData(cocaColaPath);

        /* string pepsiPath = @"C:\Users\atika\Downloads\GO.csv"; // lines 11 and 13 can be re used for other csv files in order to work with multiple files simultaneously

        string[][] pepsiData = ReadStockData(pepsiPath); */

        for (int i = 1; i < cocaColaData.Length; i++) // calculating returns of adjusted close values
        {
            double stockReturn = Convert.ToDouble(cocaColaData[i][5]) / Convert.ToDouble(cocaColaData[i-1][5]); // convert string to float before taking the ratio

            Debug.Log(stockReturn);
        }
    }

    // "float"s are 32 bits but "double"s are 64 bit, hence more place values
    // "using System;" allows the use of Convert.ToDouble, previously we used "float.Parse()"
    // Method names always start with a capital letter, variables in camelCase

    string[][] ReadStockData(string path)
    {
        string fileText = File.ReadAllText(path); // File.ReadAllLines() would have done all of line 13 and 15 in one step i.e. stores as an array of strings 

        string[] fileLines = fileText.Split('\n'); // single quotes in c# refer to single characters and not strings of characters (not applicable to python)
    
        string[][] fileCells = new string[fileLines.Length - 2][]; // exclude the header and empty line at end (due to every line of a csv ending with a "new line") from fileLines

            // "jagged array" since each row has an unspecified number of columns, and this number is not necessarily the same

        for (int i = 1; i < fileLines.Length - 1; i++) // start from the second line of csv file (by starting at i=1 and not i=0) and continue until the penultimate line ("-1 off of fileLine.Length")
        {
            fileCells[i-1] = fileLines[i].Split(','); // e.g. i = 1 we need element 0 , and split each line by comma delimiter one by one
        }

       /* for (int i = 0; i < fileCells.Length; i++) // start from the second line of csv file (by starting at i=1 and not i=0) and continue until the penultimate line ("-1 off of fileLine.Length")
        {
            fileCells[i] = fileLines[i+1].Split(','); // e.g. i = 1 we need element 0 , and split each line by comma delimiter one by one
        } */

        return fileCells;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
