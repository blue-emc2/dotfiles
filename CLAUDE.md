# Claude Code Configuration - dotfiles

このファイルは dotfiles プロジェクト用の Claude Code 設定です。

## プロジェクト概要

このプロジェクトは個人用の設定ファイル（dotfiles）を管理するリポジトリです。
主にNeovimの設定ファイルを管理しています。

## プロジェクト構成

```
dotfiles/
├── nvim/              # Neovim設定ディレクトリ
│   ├── copilot/      # GitHub Copilot関連設定
│   ├── lsp/          # LSP設定
│   └── lua/          # Lua設定ファイル
└── CLAUDE.md         # このファイル
```

## 作業時の注意事項

### 設定ファイル編集時
- 既存の設定スタイルやフォーマットを尊重する
- Neovim/Luaのベストプラクティスに従う
- プラグイン設定を変更する場合は、lazy.nvimの仕様に準拠する

### 変更前の確認事項
- 既存の設定との互換性を確認
- 依存するプラグインやバージョンを確認
- 変更が他の設定に影響しないかチェック

### テスト方針
- 設定変更後は必ずNeovimを起動して動作確認
- プラグインのインストール/更新が必要な場合は明記
- エラーが発生した場合は`:checkhealth`で診断

## Neovim設定ガイドライン

### Lua設定ファイル
- モジュールごとに適切に分割
- グローバル変数の使用は最小限に
- 設定は遅延読み込みを考慮

### プラグイン管理
- lazy.nvimを使用
- プラグインの追加/削除時はlazy-lock.jsonの変更も含める
- 重い処理は遅延読み込み（lazy loading）を設定

## Git運用

### コミット前チェック
- Neovimで設定ファイルを読み込んでエラーがないことを確認
- 余計な空白や改行の削除
- シンボリックリンクが壊れていないか確認

### コミットメッセージ
dotfilesプロジェクトに適したシンプルな形式:
- `add: 新機能追加`
- `update: 既存設定の更新`
- `fix: バグ修正`
- `remove: 不要な設定削除`

## 一時ファイル
- `.claude/tmp/` 以下に保存

## 参考情報
- [Neovim Documentation](https://neovim.io/doc/)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
