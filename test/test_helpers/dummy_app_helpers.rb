module SecondBase
  module DummyAppHelpers

    extend ActiveSupport::Concern

    private

    def dummy_app
      ::Dummy::Application
    end

    def dummy_root
      dummy_app.root
    end

    def dummy_config
      dummy_app.config
    end

    def dummy_tmp
      dummy_app.root.join 'tmp'
    end

    def dummy_db
      dummy_app.root.join 'db'
    end

    def dummy_schema
      dummy_db.join 'schema.rb'
    end

    def dummy_secondbase_schema
      dummy_db.join('secondbase', 'schema.rb')
    end

    def dummy_database_sqlite
      Dir.chdir(dummy_db){ Dir['*.sqlite3'] }.first
    end

    def assert_dummy_databases
      assert_equal 'base.sqlite3', dummy_database_sqlite
      assert_match /secondbase_test/, `mysql -uroot -e "SHOW DATABASES"`
    end

    def refute_dummy_databases
      assert_nil dummy_database_sqlite
      refute_match /secondbase_test/, `mysql -uroot -e "SHOW DATABASES"`
    end

    def delete_dummy_files
      FileUtils.rm_rf dummy_schema
      FileUtils.rm_rf dummy_secondbase_schema
      Dir.chdir(dummy_db) { FileUtils.rm_rf(dummy_database_sqlite) } if dummy_database_sqlite
      `mysql -uroot -e "DROP DATABASE IF EXISTS secondbase_test"`
    end

  end
end
