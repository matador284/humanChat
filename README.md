##  PLUGIN: humanChat - Sistema de Chat IA Ultra Robusto                                                              
  AUTOR: Coconute                                                                                                     
  VERSÃO: 3.0 ULTRA ROBUSTA                                                                                            
  DATA: 2025                                                                                                            
  GITHUB: https://github.com/matador284                                                                                 
                                                                                                                      
=======================================================
                                                                                                                     
##  DESCRIÇÃO:                                                                                                      
Sistema avançado de resposta automática para OpenKore que utiliza múltiplas APIs de IA                               
para gerar respostas humanizadas e naturais em conversas de Ragnarok Online.                                        
Com fallback automático entre 12+ APIs e modo local inteligente.                                                    
                                                                                                                     
=======================================================
                                                                                                                
##  REQUISITOS DE INSTALAÇÃO: 

- Perl 5.10 ou superior                                                                                               
- Módulos Perl necessários:                                                                                         
      * JSON                                                                                                           
      * LWP::UserAgent                                                                                                
      * HTTP::Request                                                                                                  
      * Time::HiRes                                                                                                     
##         Instalação dos Módulos                                                                                        
###         Windows (Strawberry Perl): 
         cpan install JSON LWP::UserAgent HTTP::Request Time::HiRes                                                     
- OpenKore versão what-will-become-2.1 ou superior                                                                    
- Acesso à internet para APIs externas                                                                                
                                                                                                                        
 =======================================================
                                                                                                                       
###  FUNCIONALIDADES PRINCIPAIS:                                                                                          
  ✅ Respostas humanizadas e naturais em português                                                                      
  ✅ Suporte a 12+ APIs de IA (7 GRATUITAS)                                                                             
  ✅ Sistema de fallback automático entre APIs                                                                         
  ✅ Modo local inteligente como último recurso                                                                         
  ✅ Anti-detecção de bot (nega ser bot automaticamente)                                                                
  ✅ Personalidades customizáveis (casual, educado, zoeiro)                                                             
  ✅ Delay de digitação realista                                                                                        
  ✅ Estatísticas detalhadas de uso                                                                                   
  ✅ Teste automático de conectividade das APIs                                                                        
                                                                                                                         
=========================================================                 
                                                                                                                         
##  APIs SUPORTADAS:                                                                                                      
  --------------------------------------------------------------------------------------------------------------------  
  | ID | NOME       | TIPO      | STATUS    | MODELO PRINCIPAL                  | OBSERVAÇÕES                          |  
  |----|------------|-----------|-----------|----------------------------------|--------------------------------------|  
  | 1  | OpenAI     | Paga      | ✅        | gpt-3.5-turbo                     | Requer chave API                     |  
  | 2  | DeepSeek   | Paga      | ✅        | deepseek-chat                     | Requer chave API                     |  
  | 3  | Google     | Paga      | ✅        | gemini-pro                        | Requer chave API                     |  
  | 4  | Claude     | Paga      | ✅        | claude-3-haiku                    | Requer chave API                     |  
  | 5  | Groq       | Paga      | ✅        | llama-3.1-8b-instant              | Requer chave API                     |  
  | 6  | FreeGPT    | Gratuita  | ✅        | gpt-4                             | Ilimitado*                           |  
  | 7  | HuggingChat| Gratuita  | ✅        | Mixtral-8x7B                      | Ilimitado*                           |  
  | 8  | DeepAI     | Gratuita  | ✅        | text-generator                    | 5,000 req/mês                        |  
  | 9  | TextSynth  | Gratuita  | ✅        | gptneox_20B                       | Ilimitado*                           |  
  | 10 | Cohere     | Freemium  | ✅        | command                           | Plano free disponível               |  
  | 11 | AI21       | Freemium  | ✅        | j2-ultra                          | Plano free disponível               |  
  | 12 | Forefront  | Gratuita  | ✅        | gpt-3.5-turbo                     | Ilimitado*                           |  
  -------------------------------------------------------------------------------------------------------------------- 
  * Sujeito a disponibilidade e limites de uso não documentados                                                        
                                                                                                                         
=======================================================                  
                                                                                                                         
##  COMANDOS DISPONÍVEIS:                                                                                                 
  --------------------------------------------------------------------------------------------------------------------  
  | COMANDO     | PARÂMETROS                  | DESCRIÇÃO                                                              |  
  |-------------|-----------------------------|------------------------------------------------------------------------|  
  | chatmode    | casual-educado-zoeiro       | Altera a personalidade das respostas                                   |  
  | chatapi     | 0-12                        | Seleciona qual API usar (0=Modo Local)                                 |  
  | chattest    | (sem parâmetros)            | Testa a conectividade de todas as APIs                                 |  
  | chatstats   | (sem parâmetros)            | Mostra estatísticas detalhadas de uso                                  |  
  --------------------------------------------------------------------------------------------------------------------  
                                                                                                                         
=======================================================                  
                                                                                                                        
##  CONFIGURAÇÃO RÁPIDA:                                                                                                  
  1. Configure suas chaves API no arquivo: plugins/humanChat/api_config.json
  2. Não esqueca de adicionar no openkore-master/control/sys.txt

    
  ### Exemplo Estrutura do Arquivo de Configuração
  
    {
    "openai": {
    "api_key": "sua_chave_aqui",
    "base_url": "https://api.openai.com/v1/chat/completions",
    "model": "gpt-3.5-turbo",
    "enabled": true
    },
    "freegpt": {
    "api_key": "gratuita",
    "base_url": "https://api.freegpt4.com/v1/chat/completions",
    "model": "gpt-4",
    "enabled": true,
    "free": true
    }
    }
                                           
  2. Use 'chatapi 6' para FreeGPT (gratuita) ou 'chatapi 7' para HuggingChat (gratuita)                                 
  3. Use 'chatmode casual' para respostas mais naturais                                                                 
  4. Use 'chattest' para verificar quais APIs estão funcionando                                                         
                                                                                                                         
======================================================                  
                                                                                                                         
##  EXEMPLOS DE USO:                                                                                                      
  > chatapi 6                    # Usa FreeGPT (gratuita)                                                               
  > chatmode zoeiro              # Respostas com zoeira                                                                
  > chattest                     # Testa todas as APIs                                                                  
  > chatstats                    # Mostra estatísticas                                                                  
                                                                                                                         
======================================================                  
                                                                                                                         
  LICENÇA: MIT                                                                                                          
  DIREITOS AUTORAIS: Coconute © 2025                                                                                    
                                                                                                                         
======================================================              
                                                                                                                        
  ATUALIZAÇÕES RECENTES (v3.0):                                                                                         
  • Adicionadas +7 APIs gratuitas                                                                                       
  • Sistema de fallback aprimorado                                                                                      
  • Melhor detecção de conectividade                                                                                    
  • Interface de comandos expandida                                                                                     
  • Otimização de performance                                                                                           
  • Correção de bugs críticos                                                                                           
                                                                                                                       
======================================================
