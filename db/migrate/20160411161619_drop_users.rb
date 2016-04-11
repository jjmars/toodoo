class DropUsers < ActiveRecord::Migration
  # Devido à casualidade de uso da aplicação, decidiu-se não adotar autenticação, anteriormente prevista.
  # Portanto, a tabela User criada pelo generator do Devise não será mais necessária. Devise foi removido da aplicação.
  # As tarefas de um usuário serão associadas a um Owner polimórfico, e um dos tipos possíveis será Guest (usuário anônimo).
  # Sendo Owner polimórfico, será possível associá-lo a um User futuramente caso volte-se a usar autenticação.
  def change
    drop_table :users, force: :cascade
  end
end
