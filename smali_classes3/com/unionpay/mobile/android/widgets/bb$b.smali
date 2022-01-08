.class final Lcom/unionpay/mobile/android/widgets/bb$b;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/widgets/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/bb;


# direct methods
.method public constructor <init>(Lcom/unionpay/mobile/android/widgets/bb;Landroid/content/Context;)V
    .locals 9

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bb$b;->a:Lcom/unionpay/mobile/android/widgets/bb;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/widgets/bb$b;->setOrientation(I)V

    const v0, -0xacacad

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/bb$b;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {p2, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v6, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v5, -0xd2d2d3

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {p2, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-static {p2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v7

    const/16 v8, 0x3fc

    invoke-virtual {v7, v8, v2, v5}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v4, v0}, Lcom/unionpay/mobile/android/widgets/bb$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/unionpay/mobile/android/widgets/bb;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v1, Landroid/widget/GridView;

    invoke-direct {v1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x3

    invoke-virtual {v1, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance p2, Lcom/unionpay/mobile/android/widgets/bb$a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/bb$b;->a:Lcom/unionpay/mobile/android/widgets/bb;

    invoke-direct {p2, v2, v6}, Lcom/unionpay/mobile/android/widgets/bb$a;-><init>(Lcom/unionpay/mobile/android/widgets/bb;B)V

    invoke-virtual {v1, p2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setGravity(I)V

    const/4 p2, 0x2

    invoke-virtual {v1, p2}, Landroid/widget/GridView;->setStretchMode(I)V

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v1, p1}, Landroid/widget/GridView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/bb$b;->a:Lcom/unionpay/mobile/android/widgets/bb;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/bb;->c(Lcom/unionpay/mobile/android/widgets/bb;)Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {v1, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    neg-int p2, p1

    invoke-virtual {v1, p2, p1, p2, p2}, Landroid/widget/GridView;->setPadding(IIII)V

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/widgets/bb$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
