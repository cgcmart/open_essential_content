# frozen_string_literal: true

# Adds the Content button to the admin tabs
Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'spree_essential_admin_tabs',
  insert_bottom: '#wrapper',
  partial: 'spree/admin/shared/contents_tab'
)

# Adds configuration links to the configurations sidebar
Deface::Override.new(
  virtual_path:  'spree/admin/shared/_configuration_menu',
  name:          'add_essential_content_settings_sidebar',
  insert_bottom: "[data-hook='admin_configurations_sidebar_menu']",
  partial:       'spree/admin/shared/blog_config',
  disabled:      false
)