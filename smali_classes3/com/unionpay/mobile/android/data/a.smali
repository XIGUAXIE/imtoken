.class public final Lcom/unionpay/mobile/android/data/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unionpay/mobile/android/data/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 9

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v2, -0x99999a

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v6, p1, v3

    invoke-static {v6}, Lcom/unionpay/mobile/android/data/a;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "#"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p1, v5, p0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 13

    invoke-static {p0}, Lcom/unionpay/mobile/android/utils/i;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v2, "black"

    const-string v3, "darkgray"

    const-string v4, "gray"

    const-string v5, "lightgray"

    const-string v6, "white"

    const-string v7, "red"

    const-string v8, "green"

    const-string v9, "blue"

    const-string v10, "yellow"

    const-string v11, "cyan"

    const-string v12, "magenta"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method
