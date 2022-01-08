.class public Lcn/jiguang/m/b$a;
.super Lcn/jiguang/l/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jiguang/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/jiguang/m/b;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcn/jiguang/m/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/m/b$a;->a:Lcn/jiguang/m/b;

    invoke-direct {p0}, Lcn/jiguang/l/e;-><init>()V

    iput-object p2, p0, Lcn/jiguang/m/b$a;->c:Landroid/content/Context;

    const-string p1, "JDevice#RegisterAction"

    iput-object p1, p0, Lcn/jiguang/m/b$a;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcn/jiguang/m/b;Landroid/content/Context;Lcn/jiguang/m/b$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/jiguang/m/b$a;-><init>(Lcn/jiguang/m/b;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/m/b$a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcn/jiguang/m/b$a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcn/jiguang/n/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/n/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegisterAction failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JDevice"

    invoke-static {v1, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
