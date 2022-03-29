module ApplicationHelper
  def default_meta_tags
    {
      site: 'protein-delivery',
      title: '身体づくりに励むあなたへの高タンパク宅配食レビューサイト',
      reverse: true,
      charset: 'utf-8',
      description: 'protein-deliveryは高タンパクな宅配食専門のレビューサイトです。皆で良かった商品の情報を提供し合いましょう！',
      keywords: 'たんぱく質,筋トレ,ダイエット,宅配食,ボディメイク,口コミ,protein,diet',
      canonical: 'https://www.protein-delivery.net',
      separator: '|',
      icon: [
        { href: image_url('icon.png') }
      ],
      og: {
        site_name: 'protein-delivery',
        title: '身体づくりに励むあなたへの高タンパク宅配食レビューサイト',
        description: 'protein-deliveryは高タンパクな宅配食専門のレビューサイトです。皆で良かった商品の情報を提供し合いましょう！',
        type: 'website',
        url: 'https://www.protein-delivery.net',
        image: image_url('ogp.jpg'),
        locale: 'ja_JP'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@aJ2q8qRROxPbesk'
      }
    }
  end

  def create_alert_data
    if logged_in?
      nil
    else
      {
        confirm: "【確認】こちらはログインした方のみが使える機能となります。\nログインページへ移動しますか？",
        cancel: 'キャンセル',
        commit: 'ログインページへ移動する',
        title: 'ログインページへの案内'
      }
    end
  end

  def delete_confirm
    {
      confirm: "【確認】こちらの口コミを削除してもよろしいですか？",
      cancel: 'キャンセル',
      commit: '削除する',
      title: '口コミの削除確認'
    }
  end
end
