#
# Cookbook Name:: django_application
# Recipe:: default
#
# Copyright 2012, Chris Fordham
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
 
application "django-blank" do
  path "/srv/django-blank"
  owner "nobody"
  group "nogroup"
  repository "https://github.com/flaccid/django-blank.git"
  revision "master"
  #migrate true
  packages ["libpq-dev", "git-core", "mercurial"]

  django do 
    #packages ["redis"]
    #requirements "requirements/mkii.txt"
    #settings_template "settings.py.erb"
    debug true
    #collectstatic "build_static --noinput"
    database do
      database "packaginator"
      engine "postgresql_psycopg2"
      username "packaginator"
      password "awesome_password"
    end
    #database_master_role "packaginator_database_master"
  end
  gunicorn do
    app_module :gunicorn
    # gunicorn settings
  end
end