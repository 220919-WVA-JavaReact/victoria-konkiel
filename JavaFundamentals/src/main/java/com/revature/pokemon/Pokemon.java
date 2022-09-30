package com.revature.pokemon;

import java.util.Random;

public class Pokemon {
    /*
    We need to think about what kind of information we want to store about the pokemon.
    So things we may want are name, level, health, attack.
     */

    String name;
    int level;
    int health;
    int attack;
    //We're adding on this field
    boolean fainted;

    //Now that we have a pokemon we might want to find some way to construct our pokemon object
    public Pokemon(String name) {
        this.name = name;
        //How do we randomize  some values?
        Random random = new Random();

        //Now we have a random object, let's create some random values
        this.level = random.nextInt(100) + 1;
        this.health = random.nextInt(100) + 1;
        this.attack = random.nextInt(100) + 1;
        this.fainted = false;
    }

    /*
    We now have a way to create a pokemon object but what about attacking and stuff
    We need to create a method so these pokemon can battle
    We can also create an attempt catch method
     */

    //Let's start our method for battling pokemon
    public Pokemon battle(Pokemon opponent) {
        //How do we battle?
        //When my pokemon attacks another pokemon, my attack should reduce their health, and their attack should reduce
        //my pokemon's health

//        opponent.health -= this.attack;
//        this.health -= opponent.attack;
//        return opponent;
        //This is for when we attack them
        if(opponent.health - this.attack <= 0 ) {
            opponent.health = 0;
            //Let's create a boolean value representation of the fainted status
            opponent.fainted = true;
        } else {
            opponent.health -= this.attack;
        }

        //This is for when they attack us
        if(this.health - opponent.attack <= 0 ) {
            this.health = 0;
            //Let's create a boolean value representation of the fainted status
            this.fainted = true;
        } else {
            this.health -= opponent.attack;
        }
        return opponent;
    }
}
