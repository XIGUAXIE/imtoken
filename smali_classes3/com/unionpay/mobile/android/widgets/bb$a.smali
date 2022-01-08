.class final Lcom/unionpay/mobile/android/widgets/bb$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/widgets/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/bb;


# direct methods
.method private constructor <init>(Lcom/unionpay/mobile/android/widgets/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bb$a;->a:Lcom/unionpay/mobile/android/widgets/bb;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unionpay/mobile/android/widgets/bb;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/widgets/bb$a;-><init>(Lcom/unionpay/mobile/android/widgets/bb;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    invoke-static {}, Lcom/unionpay/mobile/android/widgets/bb;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    new-instance p2, Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/bb$a;->a:Lcom/unionpay/mobile/android/widgets/bb;

    invoke-static {p3}, Lcom/unionpay/mobile/android/widgets/bb;->c(Lcom/unionpay/mobile/android/widgets/bb;)Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/bb$a;->a:Lcom/unionpay/mobile/android/widgets/bb;

    invoke-static {p3}, Lcom/unionpay/mobile/android/widgets/bb;->c(Lcom/unionpay/mobile/android/widgets/bb;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p3

    const/16 v0, 0x3fe

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/bb$a;->a:Lcom/unionpay/mobile/android/widgets/bb;

    invoke-static {v2}, Lcom/unionpay/mobile/android/widgets/bb;->c(Lcom/unionpay/mobile/android/widgets/bb;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p3, v0, v0, p3}, Lcom/unionpay/mobile/android/utils/h;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/bb$a;->a:Lcom/unionpay/mobile/android/widgets/bb;

    invoke-static {p3}, Lcom/unionpay/mobile/android/widgets/bb;->c(Lcom/unionpay/mobile/android/widgets/bb;)Landroid/content/Context;

    move-result-object p3

    const/high16 v0, 0x425c0000    # 55.0f

    invoke-static {p3, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bb$a;->a:Lcom/unionpay/mobile/android/widgets/bb;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/bb;->d(Lcom/unionpay/mobile/android/widgets/bb;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v3, 0xa

    const/16 v4, 0x9

    if-eq p1, v4, :cond_2

    const/16 v5, 0xb

    if-ne p1, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/unionpay/mobile/android/widgets/bb$a;->a:Lcom/unionpay/mobile/android/widgets/bb;

    invoke-static {v6}, Lcom/unionpay/mobile/android/widgets/bb;->c(Lcom/unionpay/mobile/android/widgets/bb;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/high16 p3, 0x41f00000    # 30.0f

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setGravity(I)V

    if-ne p1, v3, :cond_1

    const/16 p1, 0x9

    :cond_1
    invoke-static {}, Lcom/unionpay/mobile/android/widgets/bb;->c()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_2
    :goto_0
    new-instance p3, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/bb$a;->a:Lcom/unionpay/mobile/android/widgets/bb;

    invoke-static {v2}, Lcom/unionpay/mobile/android/widgets/bb;->c(Lcom/unionpay/mobile/android/widgets/bb;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-ne p1, v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x14

    :goto_1
    if-ne p1, v4, :cond_4

    const/16 p1, 0x400

    goto :goto_2

    :cond_4
    const/16 p1, 0x401

    :goto_2
    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/bb$a;->a:Lcom/unionpay/mobile/android/widgets/bb;

    invoke-static {v2}, Lcom/unionpay/mobile/android/widgets/bb;->c(Lcom/unionpay/mobile/android/widgets/bb;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v2

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/bb$a;->a:Lcom/unionpay/mobile/android/widgets/bb;

    invoke-static {v4}, Lcom/unionpay/mobile/android/widgets/bb;->c(Lcom/unionpay/mobile/android/widgets/bb;)Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v4, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, p1, v1, v4}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p2, p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-object p2
.end method
