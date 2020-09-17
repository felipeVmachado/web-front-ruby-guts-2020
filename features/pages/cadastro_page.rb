class CadastroPage < SitePrism::Page 
    set_url '?controller=authentication&back=my-account'
    element :email_create_account_field, '#email_create'
    element :create_account_btn, '#SubmitCreate'    
    element :title_masc_rd, '#id_gender1'
    element :first_name_field, '#customer_firstname'
    element :last_name_field, '#customer_lastname'
    element :password_field, '#passwd'
    element :day_select, '#days'
    element :month_select, '#months'
    element :year_select, '#years'
    element :newsletter_checkbox, '#newsletter'
    element :addres_field, '#address1'
    element :city_field, '#city'
    element :state_select, '#id_state'
    elements :state_options, '#uniform-id-state option'
    element :zip_code_field, '#postcode'
    element :mobile_phone_field, '#phone_mobile'
    element :address_alias_field, '#alias'
    element :register_account_btn, '#submitAccount'
    element :register_btn, 'submitAccount'

    # Alguns tipos de variaveis do RUBY
    # @xyz = váriavel de instância (ao terminar a execução do seu escopo ela deixa de existir)
    # @@xyz = variavel de classe (no ciclo de vida da classe)
    # $xyz = variavel global  (poderá ser acessada de qualquer lugar)


    def iniciar_criacao_conta(email)
        puts @email = email.eql?('aleatorio') ? Faker::Internet.email(domain: 'guts') : email
        email_create_account_field.set @email
        create_account_btn.click        
    end

    def preencher_form_com_dados_fixos
        title_masc_rd.set true
        @@first_name_field = 'Felipe'
        first_name_field.set @@first_name_field
        @@last_name_field = 'Machado'
        last_name_field.set @@last_name_field
        password_field.set '12345688'
        find('#days', visible: false).set(true).select '18'
        find('#months', visible: false).set(true).select 'August'
        find('#years', visible: false).set(true).select '1987'
        find('#newsletter', visible: false).set true
        addres_field.set 'Rua1, 15'
        city_field.set 'Porto Alegre'
        find('#uniform-id_state', visible: false).set(true).select 'Alabama'
        zip_code_field.set '00000'
        mobile_phone_field.set '5551992774185'
        address_alias_field.set 'Casa'
    end

    def preencher_form_com_dados_aleatorios
        title_masc_rd.set true
        @@first_name_field = Faker::Name.first_name
        first_name_field.set @@first_name_field
        @@last_name_field = Faker::Name.last_name
        last_name_field.set @@last_name_field
        password_field.set Faker::Internet.password(min_length: 5, max_length: 10, mix_case: true, special_characters: true)
        find('#days', visible: false).set(true).select '18'
        find('#months', visible: false).set(true).select 'August'
        find('#years', visible: false).set(true).select '1987'
        find('#newsletter', visible: false).set true
        addres_field.set 'Rua1, 15'
        city_field.set 'Porto Alegre'
        find('#uniform-id_state', visible: false).set(true).select 'Alabama'
        zip_code_field.set '00000'
        mobile_phone_field.set Faker::PhoneNumber.cell_phone_in_e164
        address_alias_field.set 'Casa'
    end


    def confirmar_cadastro
        find('#submitAccount').click
    end

    def account_full_name
        "#{@@first_name_field} #{@@last_name_field}"
    end

end