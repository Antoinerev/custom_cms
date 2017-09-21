# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "rhs_contacts", primary_key: "contacts_idx", id: :integer, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=utf8" do |t|
    t.integer "contacts_annee",                                null: false
    t.text    "contacts_nom",                    limit: 65535, null: false
    t.text    "contacts_prenom",                 limit: 65535, null: false
    t.text    "contacts_civilite",               limit: 65535, null: false
    t.text    "contacts_secteur_d_activite",     limit: 65535, null: false
    t.text    "contacts_adresse",                limit: 65535, null: false
    t.text    "contacts_adresse2",               limit: 65535, null: false
    t.text    "contacts_cp",                     limit: 65535, null: false
    t.text    "contacts_ville",                  limit: 65535, null: false
    t.text    "contacts_telephone_mobile",       limit: 65535, null: false
    t.text    "contacts_telephone_perso",        limit: 65535, null: false
    t.text    "contacts_telephone_pro",          limit: 65535, null: false
    t.text    "contacts_mail",                   limit: 65535, null: false
    t.text    "contacts_mail_pro",               limit: 65535, null: false
    t.text    "contacts_ville_agence",           limit: 65535, null: false
    t.text    "contacts_present",                limit: 65535, null: false
    t.text    "contacts_entretient",             limit: 65535, null: false
    t.text    "contacts_categorie",              limit: 65535, null: false
    t.text    "contacts_origine",                limit: 65535, null: false
    t.date    "contact_date_premier_contact",                  null: false
    t.text    "contact_source",                  limit: 65535, null: false
    t.text    "contacts_suite_donnee",           limit: 65535, null: false
    t.text    "contacts_resultat",               limit: 65535, null: false
    t.text    "contacts_derniere_annee_contrat", limit: 65535, null: false
  end

end
