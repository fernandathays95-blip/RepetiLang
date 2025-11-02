#include <stdio.h>
#include <stdlib.h>
#include <unistd.h> // Para sleep()

void bootScreen() {
    system("clear"); // Limpa a tela (Linux/macOS) ou "cls" no Windows

    // Tela de boot do RepetiLang
    printf("=====================================\n");
    printf("          RepetiLang Bootloader       \n");
    printf("=====================================\n\n");

    printf("Carregando o RepetiLang, aguarde...\n\n");

    // Simulação de carregamento com barra de progresso
    for(int i = 0; i <= 20; i++) {
        printf("[");
        for(int j = 0; j < i; j++) printf("=");
        for(int j = i; j < 20; j++) printf(" ");
        printf("] %d%%\r", i * 5);
        fflush(stdout);
        usleep(200000); // 200ms
    }

    printf("\n\nRepetiLang pronto!\n");
    printf("Pressione Enter para continuar...\n");
    getchar();
}

void mainSystem() {
    system("clear");
    printf("=====================================\n");
    printf("            RepetiLang Sistema       \n");
    printf("=====================================\n\n");

    printf("Bem-vindo ao RepetiLang!\n");
    printf("Digite 'r' para reiniciar ou qualquer tecla para sair.\n");

    char option = getchar();
    if(option == 'r' || option == 'R') {
        bootScreen();
        mainSystem(); // Reinicia
    } else {
        printf("Saindo do RepetiLang...\n");
    }
}

int main() {
    bootScreen();
    mainSystem();
    return 0;
}
