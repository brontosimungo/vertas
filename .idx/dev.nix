{ pkgs, ... }: {
  channel = "stable-24.05";

  packages = [
    pkgs.python312
    pkgs.python312Packages.pip
    # pkgs.python312Packages.virtualenv # Opsional jika ingin pakai virtualenv khusus
  ];

  env = {};
  idx = {
    extensions = [
      "ms-python.python" # Menambahkan ekstensi Python agar pengalaman coding lebih enak
    ];

    workspace = {
      # Lifecycle hook: Berjalan saat workspace dibuat pertama kali
      onCreate = {
        # Membuat venv dan menginstall requirements secara otomatis
        setup-python = ''
          python -m venv .venv
          source .venv/bin/activate
          pip install --upgrade pip
          pip install requests
        '';
      };
      
      # Berjalan setiap kali workspace dinyalakan kembali
      onStart = {
        # Memastikan venv siap digunakan
        # install-missing = "source .venv/bin/activate && pip install <package_anda>";
      };
    };

    previews = {
      enable = true;
      previews = {};
    };
  };
}
