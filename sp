// Implements a dictionary's functionality

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "dictionary.h"
#include <ctype.h>

// Represents a node in a hash table
typedef struct node
{
    char word[LENGTH + 1];
    struct node *next;
    //bool is_word;
    //struct node *child[27];
}
node;
node *root;

// to tally words
int word_count;

//const char *word;
// Number of buckets in hash table
const unsigned int N = 26;

// Hash table
node *table[N];

// Returns true if word is in dictionary else false
bool check(const char *word)
{
    // TODO
    return false;
}

// Hashes word to a number
unsigned int hash(const char *word)
{
    // TODO
    unsigned int hash = 0;
    for (int i=0, n=strlen(word); i<n; i++)
    {
        hash = word[0] - 96;
    }
    return hash;
    //return 0;
}

// Loads dictionary into memory, returning true if successful else false
bool load(const char *dictionary)
{
    char word[LENGTH + 1];
    //struct node *next = NULL;
    // TODO
    //open dictionary file
    FILE *file = fopen("dictionaries/small", "r");
    //check it opens correctly, if not - return false
    if (dictionary == NULL)
    {
        return false;
    }
    // read each word from dictionary
    while (fscanf(file, "%s", word) != EOF)
    {
        hash(word);
        node *new = malloc(sizeof(node));
        if (new == NULL)
        {
            return 1;
        }
        strcpy(new->word, word);
        if (table[hash] == NULL)
        {
            table[hash] = new;
        }
        else
        {
            new->next = table[N];
            table[N] = new;
        }
       /* if (word_count > 0)
        {
            if (dict->next == NULL)
            {
                strcpy(new->word, word);
                new -> next = NULL;
                table[N] = hash(word);
                table->next = new;
                word_count++;
                //printf("%i word(s)\n", word_count);
            }
            else
            {
                return false;
            }
        }
        if (word_count == 0)
        {
            strcpy(new -> word, word);
            hash(word);
            new -> next = NULL;
            dict = new;
            word_count++;
            printf("%i word(s)\n", word_count);
        }
        printf("%s - new, %i\n", new->word, word_count);
        printf("%s - dict, %i\n", dict->word, word_count);
        */
    }
    return true;
}

// Returns number of words in dictionary if loaded else 0 if not yet loaded
unsigned int size(void)
{
    // TODO
    return 0;
}

// Unloads dictionary from memory, returning true if successful else false
bool unload(void)
{
    // TODO
    return false;
}


/*bool load(const char *dictionary)
{
    char word[LENGTH + 1];
    //struct node *next = NULL;
    // TODO
    //open dictionary file
    FILE *file = fopen("dictionaries/small", "r");
    //check it opens correctly, if not - return false
    if (dictionary == NULL)
    {
        return false;
    }
    // read each word from dictionary
    while (fscanf(file, "%s", word) != EOF)
    {
        bool is_word = false;

        for (int i = 0; i < strlen(word); i++)
        {
            word[i] = tolower(word[i]);
            int key_int = atoi(word[i]);
            int key_new = word[i] - 96;
            root[i] = key_new;
            if (root == NULL)
            {
                node *new = malloc(sizeof(node));
                if (new == NULL)
                {
                    return 1;
                }
                root->child = new;
                new->child = NULL;
                root = new;
            }
            else if (root->child != NULL)
            {
                if (word[i] = length)
                {
                    is_word = true;
                }
                else
                {
                    node *new = malloc(sizeof(node));
                    if (new == NULL)
                    {
                        return 1;
                    }
                    root->child = new;
                    new->child = NULL;
                    root = new;
                }
            }
        }

    }
    return true;
}*/
