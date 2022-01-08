.class final Lcom/unionpay/mobile/android/upviews/b$c;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/upviews/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/upviews/b;


# direct methods
.method private constructor <init>(Lcom/unionpay/mobile/android/upviews/b;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/b$c;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unionpay/mobile/android/upviews/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/upviews/b$c;-><init>(Lcom/unionpay/mobile/android/upviews/b;)V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/upviews/b$c;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-static {p1}, Lcom/unionpay/mobile/android/upviews/b;->a(Lcom/unionpay/mobile/android/upviews/b;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
