

import Foundation


class UsuarioService {
    static let shared = UsuarioService()
    
    let usuarios: [Usuario] = [
        Usuario(id: 101, especie: "Humano", poder: 35, match: true, frase: "Hoje eu quero cozinhar...", foto: "char1", owner: "Fulano"),
        Usuario(id: 102, especie: "Humano", poder: 38, match: true, frase: "A morte surge da escuridão...", foto: "char2", owner: "Fulano"),
        Usuario(id: 103, especie: "Humano", poder: 42, match: true, frase: "Sou descendente de Merlin...", foto: "char3", owner: "Siclano"),
        Usuario(id: 104, especie: "Humano", poder: 49, match: true, frase: "Minha flecha é mortal...", foto: "char4", owner: "Beltrano"),
        Usuario(id: 105, especie: "Humano", poder: 41, match: true, frase: "Construo qualquer arma", foto: "char5", owner: "Mélia"),
        Usuario(id: 106, especie: "Humano", poder: 22, match: true, frase: "Sou o guerreiro alado.", foto: "char6", owner: "Joaquina"),
        Usuario(id: 107, especie: "Humano", poder: 51, match: true, frase: "Sou selvagem como um leão", foto: "char7", owner: "Beltrana"),
        Usuario(id: 108, especie: "Humano", poder: 28, match: true, frase: "Possuo o poder da mente", foto: "char8", owner: "Josefa"),
        Usuario(id: 109, especie: "Demon", poder: 60, match: true, frase: "Vou te executar", foto: "char9", owner: "Kátia"),
        Usuario(id: 110, especie: "Humano", poder: 41, match: true, frase: "O mágico de Oz", foto: "char10", owner: "Eliane"),
       

    ]
    
    
    func buscaUsuarios (completion: @escaping ([Usuario]?, Error?) -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.0) {
            completion(self.usuarios, nil)
        }
        
        
    }
}
