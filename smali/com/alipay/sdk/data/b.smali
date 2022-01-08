.class Lcom/alipay/sdk/data/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/sys/a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alipay/sdk/data/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/data/a;Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/alipay/sdk/data/b;->c:Lcom/alipay/sdk/data/a;

    iput-object p2, p0, Lcom/alipay/sdk/data/b;->a:Lcom/alipay/sdk/sys/a;

    iput-object p3, p0, Lcom/alipay/sdk/data/b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 240
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/packet/impl/b;

    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/b;-><init>()V

    .line 241
    iget-object v1, p0, Lcom/alipay/sdk/data/b;->a:Lcom/alipay/sdk/sys/a;

    iget-object v2, p0, Lcom/alipay/sdk/data/b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/packet/impl/b;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)Lcom/alipay/sdk/packet/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v1, p0, Lcom/alipay/sdk/data/b;->c:Lcom/alipay/sdk/data/a;

    invoke-virtual {v0}, Lcom/alipay/sdk/packet/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/data/a;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/alipay/sdk/data/b;->c:Lcom/alipay/sdk/data/a;

    invoke-static {}, Lcom/alipay/sdk/sys/a;->a()Lcom/alipay/sdk/sys/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/data/a;Lcom/alipay/sdk/sys/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 247
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
