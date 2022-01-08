.class public Lcn/jiguang/l/a$b;
.super Lcn/jiguang/l/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jiguang/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/jiguang/l/a;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/jiguang/l/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/l/a$b;->a:Lcn/jiguang/l/a;

    invoke-direct {p0}, Lcn/jiguang/l/e;-><init>()V

    iput-object p2, p0, Lcn/jiguang/l/a$b;->c:Landroid/content/Context;

    iput-object p3, p0, Lcn/jiguang/l/a$b;->d:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#CommandAction"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/l/a$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/l/a$b;->a:Lcn/jiguang/l/a;

    iget-object v1, p0, Lcn/jiguang/l/a$b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcn/jiguang/l/a$b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/jiguang/l/a;->b(Lcn/jiguang/l/a;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
