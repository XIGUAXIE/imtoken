.class Lcom/alipay/sdk/app/PayTask$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/app/PayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/sdk/app/PayTask;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/sdk/app/PayTask;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->a:Lcom/alipay/sdk/app/PayTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 448
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    .line 449
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->c:Ljava/lang/String;

    .line 450
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->d:Ljava/lang/String;

    .line 451
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/sdk/app/PayTask;Lcom/alipay/sdk/app/g;)V
    .locals 0

    .line 447
    invoke-direct {p0, p1}, Lcom/alipay/sdk/app/PayTask$a;-><init>(Lcom/alipay/sdk/app/PayTask;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/alipay/sdk/app/PayTask$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/alipay/sdk/app/PayTask$a;->e:Ljava/lang/String;

    return-void
.end method
