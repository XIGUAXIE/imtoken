.class Lproguard/ftsafe/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lproguard/ftsafe/a/g;->a:I

    const-string v1, "\u84dd\u7259\u914d\u5bf9"

    const-string v2, "Bluetooth pairing request"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lproguard/ftsafe/a/g;->b:[Ljava/lang/String;

    const-string v1, "\u6b63\u5728\u8bf7\u6c42\u914d\u5bf9 %s"

    const-string v2, "Requesting pairing with %s"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lproguard/ftsafe/a/g;->c:[Ljava/lang/String;

    const-string v1, "\u8bf7\u8f93\u51656\u4f4d\u914d\u5bf9\u7801"

    const-string v2, "Please enter the 6-digit pairing code"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lproguard/ftsafe/a/g;->d:[Ljava/lang/String;

    const-string v1, "\u53d6\u6d88"

    const-string v2, "Cancel"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lproguard/ftsafe/a/g;->e:[Ljava/lang/String;

    const-string v1, "\u914d\u5bf9"

    const-string v2, "Pair"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lproguard/ftsafe/a/g;->f:[Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput p1, p0, Lproguard/ftsafe/a/g;->a:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lproguard/ftsafe/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lproguard/ftsafe/a/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lproguard/ftsafe/a/g;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/a/g;->b:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lproguard/ftsafe/a/g;)I
    .locals 0

    iget p0, p0, Lproguard/ftsafe/a/g;->a:I

    return p0
.end method

.method static synthetic c(Lproguard/ftsafe/a/g;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/a/g;->c:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lproguard/ftsafe/a/g;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/a/g;->d:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lproguard/ftsafe/a/g;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/a/g;->e:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lproguard/ftsafe/a/g;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/a/g;->f:[Ljava/lang/String;

    return-object p0
.end method
