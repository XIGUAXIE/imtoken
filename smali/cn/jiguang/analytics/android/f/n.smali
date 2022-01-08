.class public final Lcn/jiguang/analytics/android/f/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcn/jiguang/analytics/android/f/o;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcn/jiguang/analytics/android/f/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/analytics/android/f/n;->a:Landroid/view/View;

    iput-object p2, p0, Lcn/jiguang/analytics/android/f/n;->b:Lcn/jiguang/analytics/android/f/o;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    const-string v0, "TrackLayoutListener"

    const-string/jumbo v1, "onGlobalLayout"

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/f/n;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/f/n;->b:Lcn/jiguang/analytics/android/f/o;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/f/o;->onScrollChanged()V

    :cond_1
    return-void
.end method
