.class final Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$2;
.super Ljava/lang/Object;
.source "KeyboardVisibilityEvent.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent;->registerEventListener(Landroid/app/Activity;Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;)Lnet/yslibrary/android/keyboardvisibilityevent/Unregistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final r:Landroid/graphics/Rect;

.field final synthetic val$activityRoot:Landroid/view/View;

.field final synthetic val$listener:Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;

.field private wasOpened:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$2;->val$activityRoot:Landroid/view/View;

    iput-object p2, p0, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$2;->val$listener:Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$2;->r:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$2;->wasOpened:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 79
    iget-object v0, p0, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$2;->val$activityRoot:Landroid/view/View;

    iget-object v1, p0, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$2;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 81
    iget-object v0, p0, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$2;->val$activityRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 82
    iget-object v1, p0, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$2;->r:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v1, v0, v1

    int-to-double v1, v1

    int-to-double v3, v0

    const-wide v5, 0x3fc3333333333333L    # 0.15

    mul-double v3, v3, v5

    cmpl-double v0, v1, v3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    iget-boolean v1, p0, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$2;->wasOpened:Z

    if-ne v0, v1, :cond_1

    return-void

    .line 91
    :cond_1
    iput-boolean v0, p0, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$2;->wasOpened:Z

    .line 93
    iget-object v1, p0, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$2;->val$listener:Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;

    invoke-interface {v1, v0}, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;->onVisibilityChanged(Z)V

    return-void
.end method
