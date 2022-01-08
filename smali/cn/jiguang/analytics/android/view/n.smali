.class public final Lcn/jiguang/analytics/android/view/n;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x138

.field public static b:I = 0x128

.field private static c:Z

.field private static d:Lcn/jiguang/analytics/android/view/f;

.field private static e:Z

.field private static f:Z

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jiguang/analytics/android/view/n;->g:Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcn/jiguang/analytics/android/view/n;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v1, v2}, Lcn/jiguang/analytics/android/view/n;->a(Landroid/content/Context;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;ZZ)V
    .locals 4

    const-class v0, Lcn/jiguang/analytics/android/view/n;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcn/jiguang/analytics/android/view/n;->c:Z

    if-nez v1, :cond_6

    if-eqz p1, :cond_0

    sget-boolean p1, Lcn/jiguang/analytics/android/view/n;->f:Z

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p2, :cond_1

    sget-boolean p1, Lcn/jiguang/analytics/android/view/n;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt p2, v1, :cond_2

    const/16 p2, 0x18

    invoke-static {p1, p2}, Lcn/jiguang/analytics/android/view/n;->a(Landroid/content/Context;I)Z

    move-result p2

    goto :goto_0

    :cond_2
    sget-boolean p2, Lcn/jiguang/analytics/android/view/n;->g:Z

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x8000000

    and-int/2addr p2, v1

    if-eq p2, v1, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    const/4 p2, 0x1

    :goto_0
    if-nez p2, :cond_4

    const-string/jumbo p0, "\u8bf7\u5148\u5f00\u542f\u60ac\u6d6e\u7a97\u6743\u9650"

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "WindowUtils"

    const-string/jumbo p1, "\u6ca1\u6709\u60ac\u6d6e\u7a97\u6743\u9650"

    invoke-static {p0, p1}, Lcn/jiguang/analytics/android/e/a/b;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_4
    :try_start_2
    sput-boolean v3, Lcn/jiguang/analytics/android/view/n;->e:Z

    sput-boolean v3, Lcn/jiguang/analytics/android/view/n;->c:Z

    new-instance p2, Lcn/jiguang/analytics/android/view/f;

    invoke-direct {p2, p1}, Lcn/jiguang/analytics/android/view/f;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcn/jiguang/analytics/android/view/n;->d:Lcn/jiguang/analytics/android/view/f;

    new-instance p1, Lcn/jiguang/analytics/android/view/o;

    invoke-direct {p1}, Lcn/jiguang/analytics/android/view/o;-><init>()V

    iput-object p1, p2, Lcn/jiguang/analytics/android/view/f;->e:Lcn/jiguang/analytics/android/view/h;

    sget-object p1, Lcn/jiguang/analytics/android/view/n;->d:Lcn/jiguang/analytics/android/view/f;

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/view/f;->a()V

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/e/a;->c()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_5

    instance-of p2, p0, Landroid/app/Activity;

    if-eqz p2, :cond_5

    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    :cond_5
    invoke-static {p1}, Lcn/jiguang/analytics/android/e/g;->c(Landroid/app/Activity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    const-string p1, "WindowUtils"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "showCircleView err:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-void

    :cond_6
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bury action displayRect view b = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowUtils"

    invoke-static {v2, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    if-eqz p1, :cond_1

    sget-boolean p1, Lcn/jiguang/analytics/android/view/n;->c:Z

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {p1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcn/jiguang/analytics/android/e/m;->b(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const-string v2, "#B70000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/16 v2, 0xcc

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public static declared-synchronized a(Z)V
    .locals 1

    const-class v0, Lcn/jiguang/analytics/android/view/n;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcn/jiguang/analytics/android/view/n;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/view/n;->e:Z

    return v0
.end method

.method private static a(Landroid/content/Context;I)Z
    .locals 8

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x13

    if-lt p1, v1, :cond_1

    const-string p1, "appops"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "checkOp"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return v6

    :cond_0
    return v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "checkOp e:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowUtils"

    invoke-static {p1, p0}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/view/n;->c:Z

    return v0
.end method

.method public static declared-synchronized c()V
    .locals 2

    const-class v0, Lcn/jiguang/analytics/android/view/n;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcn/jiguang/analytics/android/view/n;->e:Z

    invoke-static {}, Lcn/jiguang/analytics/android/view/n;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()V
    .locals 2

    const-class v0, Lcn/jiguang/analytics/android/view/n;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/jiguang/analytics/android/view/n;->d:Lcn/jiguang/analytics/android/view/f;

    if-eqz v1, :cond_0

    sget-object v1, Lcn/jiguang/analytics/android/view/n;->d:Lcn/jiguang/analytics/android/view/f;

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/view/f;->b()V

    const/4 v1, 0x0

    sput-object v1, Lcn/jiguang/analytics/android/view/n;->d:Lcn/jiguang/analytics/android/view/f;

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcn/jiguang/analytics/android/view/n;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    monitor-exit v0

    return-void
.end method

.method static synthetic e()Lcn/jiguang/analytics/android/view/f;
    .locals 1

    sget-object v0, Lcn/jiguang/analytics/android/view/n;->d:Lcn/jiguang/analytics/android/view/f;

    return-object v0
.end method
