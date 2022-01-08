.class public final Lcom/unionpay/mobile/android/widgets/bd$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/widgets/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/bd;

.field private b:Lcom/unionpay/mobile/android/widgets/u;

.field private c:Ljava/math/BigDecimal;

.field private d:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Lcom/unionpay/mobile/android/widgets/bd;Lcom/unionpay/mobile/android/widgets/u;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->a:Lcom/unionpay/mobile/android/widgets/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->b:Lcom/unionpay/mobile/android/widgets/u;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->c:Ljava/math/BigDecimal;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->d:Ljava/math/BigDecimal;

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->b:Lcom/unionpay/mobile/android/widgets/u;

    iput-object p3, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->c:Ljava/math/BigDecimal;

    iput-object p4, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->d:Ljava/math/BigDecimal;

    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p3, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->c:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/widgets/bd$a;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/unionpay/mobile/android/widgets/bd$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Ljava/lang/String;ZZ)Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->c:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v3, 0x6

    invoke-virtual {v2, p1, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->c:Ljava/math/BigDecimal;

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    invoke-direct {p0, v1}, Lcom/unionpay/mobile/android/widgets/bd$a;->c(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->d:Ljava/math/BigDecimal;

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/widgets/bd$a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/u;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/widgets/u;->c()Landroid/text/Editable;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bd$a;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/u;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9

    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v2, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p1

    invoke-interface {p4, p6, p1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sub-int/2addr p6, p5

    if-eq p6, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-direct {p0, p1, v0, v2}, Lcom/unionpay/mobile/android/widgets/bd$a;->a(Ljava/lang/String;ZZ)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int v3, p3, p2

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unionpay/mobile/android/widgets/bd$a;->b(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x2

    if-ne v0, v3, :cond_6

    const-string v6, "."

    const/16 v7, 0x30

    if-nez v4, :cond_2

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v8

    if-ne v8, v0, :cond_2

    invoke-interface {p4, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_2

    return-object v6

    :cond_2
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_3

    if-nez p5, :cond_3

    if-nez p6, :cond_3

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v7

    if-eqz v7, :cond_3

    return-object v1

    :cond_3
    const/16 v7, 0x2e

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_5

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v7

    if-nez v7, :cond_4

    return-object v1

    :cond_4
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v7

    sub-int/2addr v7, p5

    if-le v7, v5, :cond_5

    return-object v1

    :cond_5
    if-eqz v4, :cond_9

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le p5, v4, :cond_9

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unionpay/mobile/android/widgets/bd$a;->a(Ljava/lang/String;)I

    move-result v4

    rsub-int/lit8 v3, v3, 0x2

    if-le v4, v3, :cond_9

    return-object v1

    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/mobile/android/widgets/bd$a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    return-object v1

    :cond_7
    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/mobile/android/widgets/bd$a;->a(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v5, :cond_8

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, p6, :cond_9

    :cond_8
    return-object v1

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4, v2, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p1

    invoke-interface {p4, p6, p1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/bd$a;->a(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v5, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v2, v0}, Lcom/unionpay/mobile/android/widgets/bd$a;->a(Ljava/lang/String;ZZ)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
