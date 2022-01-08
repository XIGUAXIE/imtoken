.class final Lcom/unionpay/mobile/android/widgets/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/af;

.field private b:Z

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/af;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ag;->a:Lcom/unionpay/mobile/android/widgets/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/ag;->b:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/ag;->d:Z

    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    if-eqz v2, :cond_0

    and-int/lit8 v6, v3, 0x3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    if-ne v2, p2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    iput v6, p0, Lcom/unionpay/mobile/android/widgets/ag;->c:I

    :cond_1
    if-eq v4, v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/ag;->c:I

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    if-nez p4, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p2, 0x20

    if-ne p1, p2, :cond_0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/ag;->d:Z

    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-boolean p3, p0, Lcom/unionpay/mobile/android/widgets/ag;->b:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-boolean p3, p0, Lcom/unionpay/mobile/android/widgets/ag;->d:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    add-int/lit8 p3, p2, -0x1

    invoke-interface {p1, v0, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p2, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p3

    :goto_0
    add-int/lit8 p2, p2, -0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/ag;->d:Z

    :cond_2
    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/ag;->b:Z

    add-int/2addr p2, p4

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/widgets/ag;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ag;->a:Lcom/unionpay/mobile/android/widgets/af;

    iget-object p2, p2, Lcom/unionpay/mobile/android/widgets/af;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p2, p1}, Lcom/unionpay/mobile/android/widgets/u;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ag;->a:Lcom/unionpay/mobile/android/widgets/af;

    iget-object p1, p1, Lcom/unionpay/mobile/android/widgets/af;->b:Lcom/unionpay/mobile/android/widgets/u;

    iget p2, p0, Lcom/unionpay/mobile/android/widgets/ag;->c:I

    const/16 p3, 0x17

    if-gt p2, p3, :cond_3

    goto :goto_1

    :cond_3
    const/16 p2, 0x17

    :goto_1
    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->b(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/ag;->b:Z

    return-void
.end method
