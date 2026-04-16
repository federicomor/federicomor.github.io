/*
Si vuole realizzare un programma che permetta di giocare al gioco del 15
Nella risoluzione dell'esercizio si implementino le seguenti funzioni:
    int valida (int gioco[N][N], int mossa)
        che riceve la scacchiera e una mossa e restituisce 1 se la mossa è valida, 0 altrimenti.
    void muovi (int gioco[N][N], int mossa)
        che riceve la scacchiera e una mossa e aggiorna la scacchiera in base alla mossa effettuata.
    int risolto (int gioco[N][N])
        che riceve la scacchiera e restituisce 1 se il gioco è stato risolto, 0 altrimenti.
    void stampa (int gioco[N][N])
        che riceve la scacchiera e la stampa a video.
*/

#include<stdio.h>
#include<stdlib.h>
#include<time.h>
#include<math.h>

#define N 7
#define DIFF 10

int valida (int gioco[][N], int mossa);
void muovi (int gioco[][N], int mossa);
int risolto (int gioco[][N]);
void stampa (int gioco[][N]);

int main(){

    srand(time(0));
    int gioco[N][N];
    int i,j,n;
    int mossa;

    //creazione della scacchiera/matrice di gioco
    /*
    for(i=0;i<(N*N);i++)
        num[i]=i+1;
    for(i=0;i<N;i++){
        for(j=0;j<N;j++){
            esatto=0;
            do{
                n=rand()%(N*N);
                if( num[n]!=0 ){
                    gioco[i][j]=num[n]-1;
                    num[n]=0;
                    esatto=1;
                }
            }
            while(esatto!=1);
            }
        }
    */
    n=1;
    for(i=0;i<N;i++){
        for(j=0;j<N;j++){
            gioco[i][j]=n;
            n++;
        }
    }
    gioco[N-1][N-1]=0;

    printf("Obiettivo: \n");
    stampa(gioco);
    int prevmossa=-1;
    for(i=0;i<DIFF;i++){
        mossa=-1;
        while(!valida(gioco,mossa) || mossa==prevmossa){
            mossa=rand()%(N*N);
        }
        prevmossa=mossa;
        // printf("%d ",mossa );
        muovi(gioco,mossa);
    }
    printf("\nGioco: \n");
    stampa(gioco);

    while( !risolto(gioco) ){
        printf("\n");
        do{
            printf("Mossa: ");
            scanf("%d",&mossa);
        }while( !valida(gioco,mossa) );
        muovi(gioco,mossa);
        stampa(gioco);
        printf("\n");
    }

    return 0;
}


void stampa (int gioco[][N]){
    int i,j;
    for(i=0;i<N;i++){
        for(j=0;j<N;j++){
            printf("%4d",gioco[i][j]);
        }
        printf("\n");
    }
}


int risolto (int gioco[][N]){
    int esatto=1;
    int i,j,c=0;
    int v[N*N];

    for(i=0;i<N;i++){
        for(j=0;j<N;j++){
            v[c]=gioco[i][j];
            c++;
        }
    }

//    for(i=0;i<N*N;i++)
//        printf("%d ",v[i]);

    for(i=0;i<N*N-2;i++){
        if(v[i+1]!=v[i]+1 || v[N*N-1]!=0)
            esatto=0;
    }
    if(esatto==1)
        printf("Gioco risolto!\n");
    return esatto;
}


int valida (int gioco[][N], int mossa){
    int p0r,p0c,i,j;
    int pmossac,pmossar;
    int giusta=0;
    for(i=0;i<N;i++){
        for(j=0;j<N;j++){
            if(gioco[i][j]==0){
                p0r=i;
                p0c=j;
            }
        }
    }
    for(i=0;i<N;i++){
        for(j=0;j<N;j++){
            if(gioco[i][j]==mossa){
                pmossar=i;
                pmossac=j;
            }
        }
    }
    if( p0r==pmossar){
        if( abs(p0c-pmossac)==1 )
            giusta=1;
    }
    else if( p0c==pmossac){
        if(abs(p0r-pmossar)==1 )
            giusta=1;
    }
    else
        giusta=0;
    return giusta;
}


void muovi (int gioco[][N], int mossa){
    int p0r,p0c,i,j;
    int pmossac,pmossar;
    for(i=0;i<N;i++){
        for(j=0;j<N;j++){
            if(gioco[i][j]==0){
                p0r=i;
                p0c=j;
            }
            if(gioco[i][j]==mossa){
                pmossar=i;
                pmossac=j;
            }
        }
    }
    gioco[p0r][p0c]=mossa;
    gioco[pmossar][pmossac]=0;
}

