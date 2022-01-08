.class public Lcom/unionpay/mobile/android/upwidget/UPScrollView;
.super Landroid/widget/ScrollView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/upwidget/UPScrollView$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/unionpay/mobile/android/upwidget/UPScrollView$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/unionpay/mobile/android/upwidget/v;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/upwidget/v;-><init>(Lcom/unionpay/mobile/android/upwidget/UPScrollView;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->d:Landroid/os/Handler;

    new-instance p1, Lcom/unionpay/mobile/android/upwidget/u;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/upwidget/u;-><init>(Lcom/unionpay/mobile/android/upwidget/UPScrollView;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upwidget/UPScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->b:I

    return p1
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upwidget/UPScrollView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/upwidget/UPScrollView;)I
    .locals 0

    iget p0, p0, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->b:I

    return p0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/upwidget/UPScrollView;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/unionpay/mobile/android/upwidget/UPScrollView$a;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/upwidget/UPScrollView$a;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->b:I

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/android/upwidget/UPScrollView$a;->e(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
