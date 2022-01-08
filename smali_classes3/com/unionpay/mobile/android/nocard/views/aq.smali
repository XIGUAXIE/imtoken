.class final Lcom/unionpay/mobile/android/nocard/views/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/ao;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/nocard/views/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/aq;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/aq;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget p1, p1, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/aq;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->J:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/aq;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->u:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/aq;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    const/16 v0, 0xd

    iget-object v1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->p:Lcom/unionpay/mobile/android/model/e;

    invoke-virtual {p1, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/ao;->a(ILcom/unionpay/mobile/android/model/e;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/aq;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/ao;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->aC:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/aq;->a:Lcom/unionpay/mobile/android/nocard/views/ao;

    invoke-static {p1}, Lcom/unionpay/mobile/android/nocard/views/ao;->d(Lcom/unionpay/mobile/android/nocard/views/ao;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
