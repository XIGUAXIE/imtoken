.class public Lcn/jiguang/l/a$a;
.super Lcn/jiguang/l/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jiguang/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/jiguang/l/a;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcn/jiguang/l/a;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/l/a$a;->a:Lcn/jiguang/l/a;

    invoke-direct {p0}, Lcn/jiguang/l/e;-><init>()V

    iput-object p2, p0, Lcn/jiguang/l/a$a;->c:Landroid/content/Context;

    iput-object p3, p0, Lcn/jiguang/l/a$a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcn/jiguang/l/a$a;->e:Landroid/os/Bundle;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#BundleAction"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/l/a$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/l/a$a;->a:Lcn/jiguang/l/a;

    iget-object v1, p0, Lcn/jiguang/l/a$a;->c:Landroid/content/Context;

    iget-object v2, p0, Lcn/jiguang/l/a$a;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/jiguang/l/a$a;->e:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcn/jiguang/l/a;->a(Lcn/jiguang/l/a;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BundleAction failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JCommon"

    invoke-static {v1, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
