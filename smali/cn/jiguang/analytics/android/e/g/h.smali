.class public final Lcn/jiguang/analytics/android/e/g/h;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/Object; = null

.field static b:Ljava/lang/reflect/Field; = null

.field static c:Ljava/lang/Class; = null

.field static d:Ljava/lang/Class; = null

.field static e:Z = false

.field static f:Z = false

.field private static g:Ljava/lang/Class; = null

.field private static h:Ljava/lang/reflect/Method; = null

.field private static i:Ljava/lang/Class; = null

.field private static j:Ljava/lang/reflect/Method; = null

.field private static k:Ljava/lang/Class; = null

.field private static l:Ljava/lang/reflect/Method; = null

.field private static m:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "PopupWindow"

    const-string v2, "CustomWindow"

    const-string v3, "DialogWindow"

    if-eqz v0, :cond_3

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_3

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "windowLayoutParams type :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RootViewUtils"

    invoke-static {v5, v4}, Lcn/jiguang/analytics/android/e/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const-string p0, "MainWindow"

    return-object p0

    :cond_0
    const/16 v4, 0x63

    if-ge v0, v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcn/jiguang/analytics/android/e/g/h;->c:Ljava/lang/Class;

    if-ne v4, v5, :cond_1

    return-object v3

    :cond_1
    const/16 v4, 0x7cf

    if-ge v0, v4, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcn/jiguang/analytics/android/e/g/h;->d:Ljava/lang/Class;

    if-ne v4, v5, :cond_2

    return-object v1

    :cond_2
    const/16 v4, 0xbb7

    if-ge v0, v4, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lcn/jiguang/analytics/android/e/g/h;->c:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    return-object v3

    :cond_4
    sget-object v0, Lcn/jiguang/analytics/android/e/g/h;->d:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    return-object v1

    :cond_5
    return-object v2
.end method

.method public static a()V
    .locals 9

    const-string v0, "androidx.appcompat.view.menu.MenuView$ItemView"

    const-string v1, "androidx.appcompat.view.menu.ListMenuItemView"

    const-string v2, "getItemData"

    const-string v3, "RootViewUtils"

    sget-boolean v4, Lcn/jiguang/analytics/android/e/g/h;->m:Z

    if-nez v4, :cond_7

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    const-string v4, "android.view.WindowManagerGlobal"

    goto :goto_0

    :cond_0
    const-string v4, "android.view.WindowManagerImpl"

    :goto_0
    const/4 v6, 0x1

    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v5, :cond_1

    const-string/jumbo v5, "sDefaultWindowManager"

    goto :goto_1

    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xd

    if-lt v5, v7, :cond_2

    const-string/jumbo v5, "sWindowManager"

    goto :goto_1

    :cond_2
    const-string v5, "mWindowManager"

    :goto_1
    const-string v7, "mViews"

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    sput-object v7, Lcn/jiguang/analytics/android/e/g/h;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sget-object v5, Lcn/jiguang/analytics/android/e/g/h;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v5, Lcn/jiguang/analytics/android/e/g/h;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v7, Ljava/util/ArrayList;

    if-ne v5, v7, :cond_3

    sput-boolean v6, Lcn/jiguang/analytics/android/e/g/h;->e:Z

    goto :goto_2

    :cond_3
    sget-object v5, Lcn/jiguang/analytics/android/e/g/h;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v7, [Landroid/view/View;

    if-ne v5, v7, :cond_4

    sput-boolean v6, Lcn/jiguang/analytics/android/e/g/h;->f:Z

    :cond_4
    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lcn/jiguang/analytics/android/e/g/h;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "init windowManager error:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v4, 0x0

    :try_start_1
    const-string v5, "com.android.internal.view.menu.ListMenuItemView"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcn/jiguang/analytics/android/e/g/h;->g:Ljava/lang/Class;

    const-string v5, "com.android.internal.view.menu.MenuView$ItemView"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcn/jiguang/analytics/android/e/g/h;->h:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "init itemview error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    :try_start_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcn/jiguang/analytics/android/e/g/h;->i:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcn/jiguang/analytics/android/e/g/h;->j:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "init itemviewV7 error:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    :try_start_3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcn/jiguang/analytics/android/e/g/h;->k:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcn/jiguang/analytics/android/e/g/h;->l:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init itemviewAndroidX error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    const/16 v0, 0x17

    :try_start_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    if-lt v1, v0, :cond_5

    :try_start_5
    const-string v1, "com.android.internal.policy.PhoneWindow$DecorView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcn/jiguang/analytics/android/e/g/h;->c:Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    :catch_4
    :try_start_6
    const-string v1, "com.android.internal.policy.DecorView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    :goto_7
    sput-object v1, Lcn/jiguang/analytics/android/e/g/h;->c:Ljava/lang/Class;

    goto :goto_8

    :cond_5
    const-string v1, "com.android.internal.policy.impl.PhoneWindow$DecorView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "init decorViewClass error:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    :try_start_7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_6

    const-string v0, "android.widget.PopupWindow$PopupDecorView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_9
    sput-object v0, Lcn/jiguang/analytics/android/e/g/h;->d:Ljava/lang/Class;

    goto :goto_a

    :cond_6
    const-string v0, "android.widget.PopupWindow$PopupViewContainer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init popDecorViewClass error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    sput-boolean v6, Lcn/jiguang/analytics/android/e/g/h;->m:Z

    :cond_7
    return-void
.end method

.method private static a(Ljava/lang/String;)[Landroid/view/View;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcn/jiguang/analytics/android/e/g/h;->d()[Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-static {v5}, Lcn/jiguang/analytics/android/e/g/h;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v2, [Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/View;

    return-object p0
.end method

.method private static a([Landroid/view/View;Z)[Landroid/view/View;
    .locals 7

    if-eqz p0, :cond_5

    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/e/a;->d()I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-interface {v0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v6, v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_2

    check-cast v5, Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    :goto_1
    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/view/View;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/View;

    :cond_5
    :goto_3
    return-object p0
.end method

.method public static b(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lcn/jiguang/analytics/android/e/g/h;->c:Ljava/lang/Class;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/jiguang/analytics/android/e/g/h;->d:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b()[Landroid/view/View;
    .locals 1

    const-string v0, "DialogWindow"

    invoke-static {v0}, Lcn/jiguang/analytics/android/e/g/h;->a(Ljava/lang/String;)[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/view/View;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcn/jiguang/analytics/android/e/g/h;->g:Ljava/lang/Class;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    sget-object v1, Lcn/jiguang/analytics/android/e/g/h;->h:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcn/jiguang/analytics/android/e/g/h;->i:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcn/jiguang/analytics/android/e/g/h;->j:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcn/jiguang/analytics/android/e/g/h;->k:Ljava/lang/Class;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcn/jiguang/analytics/android/e/g/h;->l:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static c()[Landroid/view/View;
    .locals 1

    const-string v0, "PopupWindow"

    invoke-static {v0}, Lcn/jiguang/analytics/android/e/g/h;->a(Ljava/lang/String;)[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static d()[Landroid/view/View;
    .locals 5

    invoke-static {}, Lcn/jiguang/analytics/android/e/g/h;->a()V

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/view/View;

    sget-object v2, Lcn/jiguang/analytics/android/e/g/h;->a:Ljava/lang/Object;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/e/a;->c()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    new-array v1, v3, [Landroid/view/View;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    sget-boolean v4, Lcn/jiguang/analytics/android/e/g/h;->e:Z

    if-eqz v4, :cond_2

    sget-object v0, Lcn/jiguang/analytics/android/e/g/h;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, [Landroid/view/View;

    goto :goto_1

    :cond_2
    sget-boolean v4, Lcn/jiguang/analytics/android/e/g/h;->f:Z

    if-eqz v4, :cond_3

    sget-object v0, Lcn/jiguang/analytics/android/e/g/h;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getWindowViews error:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RootViewUtils"

    invoke-static {v2, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-static {v1, v3}, Lcn/jiguang/analytics/android/e/g/h;->a([Landroid/view/View;Z)[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    const-string v0, "MainWindow"

    return-object v0
.end method
