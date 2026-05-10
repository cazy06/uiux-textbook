# 貢献ガイドライン / Contributing Guidelines

UIUXデザインの教科書への貢献に興味を持っていただきありがとうございます。
Thank you for your interest in contributing to the UI/UX Design Textbook.

---

## 貢献の種類 / Types of Contributions

| 種類 | 方法 |
|---|---|
| 誤字・誤記の修正 | Pull Request |
| 翻訳の改善（日→英 / 英→日） | Pull Request |
| 内容の追加・補足 | Issue → 議論後 Pull Request |
| 新しいセクション・付録の提案 | Issue（ラベル: `enhancement`） |
| リンク切れ・参考文献の更新 | Pull Request |
| デザイン・レイアウトの改善 | Issue（ラベル: `design`） |

---

## はじめる前に / Before You Start

### 小さな修正（誤字・リンク切れ等）
Issue を立てずに直接 Pull Request を送っていただいて構いません。

### 大きな変更（新セクション・構成変更等）
先に **Issue** を作成して内容・意図・対象範囲を共有してください。
実装に入る前に方向性を確認することで、手戻りを防げます。

---

## Pull Request の手順 / Pull Request Process

```bash
# 1. リポジトリをフォーク
# 2. ブランチを作成
git checkout -b fix/typo-chapter3

# 3. 変更を加える（index.html を直接編集）

# 4. コミット
git commit -m "fix: 第3章の誤字修正 (s-ia-overview)"

# 5. Push & Pull Request 作成
```

### コミットメッセージの規約 / Commit Convention

```
fix:      誤字・リンク切れ・バグ修正
feat:     新しいセクション・内容の追加
improve:  既存内容の改善・補足
translate: 翻訳の追加・修正
style:    レイアウト・CSS の変更（内容変更なし）
```

---

## 編集上のルール / Editorial Rules

### バイリンガル対応（必須）
本書は日英バイリンガルで構成されています。
**日本語を追加・修正した場合は、英語スパンも必ず更新してください。**

```html
<!-- 本文テキストのパターン -->
<p>
  <span class="ja-only">日本語テキスト</span>
  <span class="en-only">English text</span>
</p>

<!-- 見出しのパターン -->
<h2 class="ct" id="s-example">
  <span data-ja="日本語見出し" data-en="English Heading">日本語見出し</span>
</h2>
```

### 参考文献の記載
新しい理論・研究を追記する場合は、`#references` セクションに出典を追加してください。

```html
<li><span class="ja-only"><strong>[著者年]</strong> 著者名 (年). 書名...</span>
    <span class="en-only"><strong>[著者年]</strong> Author (year). Title...</span></li>
```

### アンカーIDの命名規則
```
章: ch0, ch1, part1, part2 ...
付録: adjacent-map, biz-strategy-map, ux-maturity, frontend-dev, futures-design ...
セクション: s-[付録略称]-[内容略称]  例: s-fe-device, s-mktg-funnel
```

---

## 内容の方針 / Content Policy

- **中立性**: 特定ツール・企業・サービスへの誘導を含まないこと
- **根拠**: 理論・データには出典を明示すること
- **範囲**: UI/UXデザインおよびその隣接領域（経営戦略・フロントエンド・マーケティング等）に関連する内容であること
- **倫理**: ダークパターン・操作的設計を推奨する内容は受け付けません

---

## ライセンスについて / License Notice

このリポジトリへの貢献は、リポジトリと同じ **CC BY-NC-SA 4.0** ライセンスのもとで公開されることに同意したものとみなします。

By contributing to this repository, you agree that your contributions will be licensed under the same **CC BY-NC-SA 4.0** license as the repository.

---

## 質問・相談 / Questions

Issue の `question` ラベルをご利用ください。
Please use the `question` label in Issues.
