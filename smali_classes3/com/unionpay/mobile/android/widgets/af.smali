.class public final Lcom/unionpay/mobile/android/widgets/af;
.super Lcom/unionpay/mobile/android/widgets/aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/af$a;
    }
.end annotation


# instance fields
.field private c:Landroid/text/TextWatcher;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/unionpay/mobile/android/widgets/af$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/widgets/aa;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;B)V

    new-instance p1, Lcom/unionpay/mobile/android/widgets/ag;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/widgets/ag;-><init>(Lcom/unionpay/mobile/android/widgets/af;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/af;->c:Landroid/text/TextWatcher;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/af;->o:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/af;->b:Lcom/unionpay/mobile/android/widgets/u;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/af;->c:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->a(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/af;->b:Lcom/unionpay/mobile/android/widgets/u;

    new-instance p2, Landroid/text/InputFilter$LengthFilter;

    const/16 p4, 0x17

    invoke-direct {p2, p4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->a(Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/af;->b:Lcom/unionpay/mobile/android/widgets/u;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->a(I)V

    iget-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/af;->i:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/af;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->setEnabled(Z)V

    :cond_0
    const-string p1, "regex"

    invoke-static {p3, p1}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/af;->o:Ljava/util/ArrayList;

    if-nez p3, :cond_1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/unionpay/mobile/android/widgets/af;->o:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge p2, p3, :cond_3

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/json/JSONObject;

    if-eqz p3, :cond_2

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/af;->o:Ljava/util/ArrayList;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/af$a;

    invoke-direct {v0, p0, p3}, Lcom/unionpay/mobile/android/widgets/af$a;-><init>(Lcom/unionpay/mobile/android/widgets/af;Lorg/json/JSONObject;)V

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x30

    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v5

    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_0

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v5, v6, 0xa

    rem-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v5

    :cond_0
    add-int/2addr v3, v6

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    rsub-int/lit8 v1, v3, 0xa

    add-int/2addr v1, v5

    int-to-char v5, v1

    :goto_1
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne v5, p0, :cond_3

    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/af;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/af;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/af;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/u;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 9

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/af;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/af;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/af;->o:Ljava/util/ArrayList;

    const/16 v3, 0x13

    const/16 v4, 0xd

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/af;->o:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/af;->o:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/unionpay/mobile/android/widgets/af$a;

    invoke-virtual {v7}, Lcom/unionpay/mobile/android/widgets/af$a;->a()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lcom/unionpay/mobile/android/widgets/af$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    :cond_1
    if-eqz v6, :cond_4

    invoke-virtual {v7}, Lcom/unionpay/mobile/android/widgets/af$a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/unionpay/mobile/android/widgets/af$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/af;->b(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v4, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v3, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v4, v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v3, v2, :cond_6

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/af;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    return v5
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "_input_cardNO"

    return-object v0
.end method
