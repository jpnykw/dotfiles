module.exports = {
  disableEmoji: false,
  format: "{type}: {subject}",
  list: [
    "feat",
    "fix",
    "docs",
    "style",
    "refactor",
    "perf",
    "test",
    "chore",
  ],
  maxMessageLength: 64,
  minMessageLength: 3,
  questions: ["type", "subject"],
  scopes: [],
  types: {
    feat: {
      description: "新機能の実装",
      value: "feat",
    },
    fix: {
      description: "バグやエラーの修正",
      value: "fix",
    },
    docs: {
      description: "ドキュメントの追加や変更",
      value: "docs",
    },
    style: {
      description: "動作結果に影響しないコードの変更",
      value: "style",
    },
    refactor: {
      description: "バグ修正や機能追加を行わないコードの変更",
      value: "refactor",
    },
    perf: {
      description: "パフォーマンスを改善するコードの変更",
      value: "perf",
    },
    test: {
      description: "テストに関する変更",
      value: "test",
    },
    chore: {
      description: "ビルドプロセスやライブラリとその依存関係の変更",
      value: "chore",
    },
  },
};
