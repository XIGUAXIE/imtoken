.class public Lproguard/ftsafe/a/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Lproguard/ftsafe/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " "

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/a/f;->c:[Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lproguard/ftsafe/a/f;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lproguard/ftsafe/a/f;->e:I

    iput-object p1, p0, Lproguard/ftsafe/a/f;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lproguard/ftsafe/a/f;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/a/f;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lproguard/ftsafe/a/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/a/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lproguard/ftsafe/a/f;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/a/f;->c:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lproguard/ftsafe/a/f;)I
    .locals 0

    iget p0, p0, Lproguard/ftsafe/a/f;->d:I

    return p0
.end method

.method static synthetic e(Lproguard/ftsafe/a/f;)I
    .locals 0

    iget p0, p0, Lproguard/ftsafe/a/f;->e:I

    return p0
.end method

.method static synthetic f(Lproguard/ftsafe/a/f;)Lproguard/ftsafe/a/h;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/a/f;->f:Lproguard/ftsafe/a/h;

    return-object p0
.end method


# virtual methods
.method public a()Lproguard/ftsafe/a/a;
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/a/f;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lproguard/ftsafe/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lproguard/ftsafe/a/a;-><init>(Lproguard/ftsafe/a/f;Lproguard/ftsafe/a/b;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TargetName can not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Lproguard/ftsafe/a/f;
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/a/f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lproguard/ftsafe/a/h;)Lproguard/ftsafe/a/f;
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/a/f;->f:Lproguard/ftsafe/a/h;

    return-object p0
.end method
