.class public Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent;
.super Ljava/lang/Object;
.source "KeyboardVisibilityEvent.java"


# static fields
.field private static final KEYBOARD_MIN_HEIGHT_RATIO:D = 0.15


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getActivityRoot(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    const v0, 0x1020002

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static isKeyboardVisible(Landroid/app/Activity;)Z
    .locals 6

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 110
    invoke-static {p0}, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent;->getActivityRoot(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p0, v0

    int-to-double v0, v0

    int-to-double v2, p0

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double v2, v2, v4

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static registerEventListener(Landroid/app/Activity;Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;)Lnet/yslibrary/android/keyboardvisibilityevent/Unregistrar;
    .locals 2

    if-eqz p0, :cond_2

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0x30

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 68
    invoke-static {p0}, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent;->getActivityRoot(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 70
    new-instance v1, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$2;

    invoke-direct {v1, v0, p1}, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$2;-><init>(Landroid/view/View;Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;)V

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 98
    new-instance p1, Lnet/yslibrary/android/keyboardvisibilityevent/SimpleUnregistrar;

    invoke-direct {p1, p0, v1}, Lnet/yslibrary/android/keyboardvisibilityevent/SimpleUnregistrar;-><init>(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p1

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Parameter:listener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter:activity window SoftInputMethod is SOFT_INPUT_ADJUST_NOTHING. In this case window will not be resized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Parameter:activity must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setEventListener(Landroid/app/Activity;Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;)V
    .locals 2

    .line 30
    invoke-static {p0, p1}, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent;->registerEventListener(Landroid/app/Activity;Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEventListener;)Lnet/yslibrary/android/keyboardvisibilityevent/Unregistrar;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$1;

    invoke-direct {v1, p0, p1}, Lnet/yslibrary/android/keyboardvisibilityevent/KeyboardVisibilityEvent$1;-><init>(Landroid/app/Activity;Lnet/yslibrary/android/keyboardvisibilityevent/Unregistrar;)V

    .line 32
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
