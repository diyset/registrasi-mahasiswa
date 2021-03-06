INSERT INTO s_permission (id, permission_value, permission_label) VALUES
  ('editmaster', 'EDIT_MASTER', 'Edit Master'),
  ('viewmaster', 'VIEW_MASTER', 'View Master'),
  ('editpendaftar', 'EDIT_PENDAFTAR', 'Edit Peserta'),
  ('viewpendaftar', 'VIEW_PENDAFTAR', 'View Peserta');

INSERT INTO s_role (id, description, name) VALUES
  ('pendaftar', 'PENDAFTAR', 'Peserta'),
  ('humas', 'HUMAS', 'Humas');

INSERT INTO s_role_permission (id_role, id_permission) VALUES
  ('pendaftar', 'viewpendaftar'),
  ('pendaftar', 'editpendaftar'),
  ('humas', 'viewmaster'),
  ('humas', 'editmaster');

INSERT INTO s_user (id, active, username, id_role) VALUES
  ('u001', true, 'user', 'pendaftar');

INSERT INTO s_user (id, active, username, id_role) VALUES
  ('u002', true, 'admin', 'humas');

-- password : 123
INSERT INTO s_user_password (id, id_user, password) VALUES
  ('up001', 'u001', '$2a$17$Mhfv.hlqIybDHWqAaTMU/.PKi8RDntt6xe9pTMGQLfnW3phTlhROm');

-- password : 1234
INSERT INTO s_user_password (id, id_user, password) VALUES
  ('up002', 'u002', '$2a$17$g6pNPoXyIknhS1lax/zIoetaUWWTeG7tP/xV3Fpx1FCY3mjDfWnT.');