.class public final Lcom/unionpay/mobile/android/upviews/b;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/upviews/b$d;,
        Lcom/unionpay/mobile/android/upviews/b$c;,
        Lcom/unionpay/mobile/android/upviews/b$b;,
        Lcom/unionpay/mobile/android/upviews/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebSettings;

.field private b:Landroid/os/Handler;

.field private c:Lcom/unionpay/mobile/android/upviews/b$a;

.field private d:Ljava/util/Timer;

.field private e:Z

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/upviews/b$a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/b;->a:Landroid/webkit/WebSettings;

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/b;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/b;->c:Lcom/unionpay/mobile/android/upviews/b$a;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->d:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upviews/b;->e:Z

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/b;->f:Ljava/util/ArrayList;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/b;->b:Landroid/os/Handler;

    iput-object p2, p0, Lcom/unionpay/mobile/android/upviews/b;->c:Lcom/unionpay/mobile/android/upviews/b$a;

    const/high16 p1, 0x2000000

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/upviews/b;->setScrollBarStyle(I)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upviews/b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/b;->a:Landroid/webkit/WebSettings;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance p1, Lcom/unionpay/mobile/android/upviews/b$c;

    invoke-direct {p1, p0, v0}, Lcom/unionpay/mobile/android/upviews/b$c;-><init>(Lcom/unionpay/mobile/android/upviews/b;B)V

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/upviews/b;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance p1, Lcom/unionpay/mobile/android/upviews/b$d;

    invoke-direct {p1, p0, v0}, Lcom/unionpay/mobile/android/upviews/b$d;-><init>(Lcom/unionpay/mobile/android/upviews/b;B)V

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/upviews/b;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upviews/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upviews/b;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upviews/b;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/b;->d:Ljava/util/Timer;

    return-object p1
.end method

.method private final a()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "&#x7F51;&#x9875;&#x52A0;&#x8F7D;&#x5931;&#x8D25;&#xFF0C;&#x8BF7;&#x91CD;&#x8BD5;"

    aput-object v2, v0, v1

    const-string v1, "<div align=\"center\">%s</div>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {p0, v0, v1, v2}, Lcom/unionpay/mobile/android/upviews/b;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/upviews/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unionpay/mobile/android/upviews/b;->e:Z

    return p0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/upviews/b;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upviews/b;->d:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/upviews/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upviews/b;->a()V

    return-void
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/upviews/b;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upviews/b;->f:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->f:Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/unionpay/mobile/android/upviews/b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->c:Lcom/unionpay/mobile/android/upviews/b$a;

    if-eqz v0, :cond_7

    instance-of v2, v0, Lcom/unionpay/mobile/android/upviews/b$b;

    if-eqz v2, :cond_7

    check-cast v0, Lcom/unionpay/mobile/android/upviews/b$b;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/unionpay/mobile/android/upviews/b$b;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/unionpay/mobile/android/upviews/b;->a()V

    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v1, :cond_3

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/upviews/b;->e:Z

    :cond_3
    iget-object p1, p0, Lcom/unionpay/mobile/android/upviews/b;->c:Lcom/unionpay/mobile/android/upviews/b$a;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/unionpay/mobile/android/upviews/b$a;->s()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b;->c:Lcom/unionpay/mobile/android/upviews/b$a;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/unionpay/mobile/android/upviews/b$a;->r()V

    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string p1, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "url = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "uppay"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/upviews/b;->loadUrl(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return v1
.end method
