.class public final Lcn/jiguang/analytics/android/e/g/m;
.super Ljava/lang/Object;


# static fields
.field private static A:Z

.field private static B:Z

.field private static C:Z

.field private static D:Z

.field private static E:Z

.field private static F:Z

.field private static G:Ljava/lang/reflect/Method;

.field private static H:Ljava/lang/Package;

.field private static I:Ljava/lang/Package;

.field private static J:Ljava/lang/Package;

.field private static K:Ljava/lang/Package;

.field private static L:Ljava/lang/Package;

.field public static a:Z

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:Z

.field public static n:Z

.field public static o:Z

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Z

.field public static t:Ljava/lang/Class;

.field public static u:Ljava/lang/Class;

.field private static v:Z

.field private static w:Z

.field private static x:Z

.field private static y:Z

.field private static z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    const-class v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    sput-object v1, Lcn/jiguang/analytics/android/e/g/m;->K:Ljava/lang/Package;

    const-class v1, Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    sput-object v1, Lcn/jiguang/analytics/android/e/g/m;->L:Ljava/lang/Package;

    :try_start_0
    const-string v1, "android.support.v4.widget"

    invoke-static {v1}, Ljava/lang/Package;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    sput-object v1, Lcn/jiguang/analytics/android/e/g/m;->H:Ljava/lang/Package;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    const-string v1, "android.support.v4.view"

    invoke-static {v1}, Ljava/lang/Package;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    sput-object v1, Lcn/jiguang/analytics/android/e/g/m;->I:Ljava/lang/Package;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :try_start_2
    const-string v1, "android.support.v7.widget"

    invoke-static {v1}, Ljava/lang/Package;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v1

    sput-object v1, Lcn/jiguang/analytics/android/e/g/m;->J:Ljava/lang/Package;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :try_start_3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcn/jiguang/analytics/android/e/g/m;->u:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_4
    const-string v4, "getChildAdapterPosition"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/jiguang/analytics/android/e/g/m;->G:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    :try_start_5
    sget-object v1, Lcn/jiguang/analytics/android/e/g/m;->G:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    sget-object v1, Lcn/jiguang/analytics/android/e/g/m;->u:Ljava/lang/Class;

    const-string v4, "getChildPosition"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/jiguang/analytics/android/e/g/m;->G:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :cond_0
    invoke-static {v0}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcn/jiguang/analytics/android/e/g/m;->e:Z

    const-string v1, "androidx.swiperefreshlayout.widget.SwipeRefreshLayout"

    invoke-static {v1}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcn/jiguang/analytics/android/e/g/m;->f:Z

    const-string v2, "androidx.viewpager.widget.ViewPager"

    invoke-static {v2}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcn/jiguang/analytics/android/e/g/m;->g:Z

    const-string v3, "com.tencent.smtt.sdk.WebView"

    invoke-static {v3}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcn/jiguang/analytics/android/e/g/m;->h:Z

    const-string v3, "androidx.appcompat.app.AlertDialog"

    invoke-static {v3}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcn/jiguang/analytics/android/e/g/m;->i:Z

    const-string v4, "androidx.appcompat.app.AlertDialog.Builder"

    invoke-static {v4}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcn/jiguang/analytics/android/e/g/m;->F:Z

    const-string v5, "androidx.fragment.app.FragmentActivity"

    invoke-static {v5}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lcn/jiguang/analytics/android/e/g/m;->j:Z

    const-string v6, "androidx.fragment.app.Fragment"

    invoke-static {v6}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcn/jiguang/analytics/android/e/g/m;->k:Z

    const-string v7, "androidx.legacy.app.FragmentPagerAdapter"

    invoke-static {v7}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcn/jiguang/analytics/android/e/g/m;->l:Z

    const-string v8, "androidx.legacy.app.FragmentStatePagerAdapter"

    invoke-static {v8}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v9

    sput-boolean v9, Lcn/jiguang/analytics/android/e/g/m;->m:Z

    const-string v9, "androidx.fragment.app.FragmentPagerAdapter"

    invoke-static {v9}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcn/jiguang/analytics/android/e/g/m;->n:Z

    const-string v10, "androidx.fragment.app.FragmentStatePagerAdapter"

    invoke-static {v10}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v11

    sput-boolean v11, Lcn/jiguang/analytics/android/e/g/m;->o:Z

    const-string v11, "androidx.appcompat.widget.PopupMenu"

    invoke-static {v11}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v12

    sput-boolean v12, Lcn/jiguang/analytics/android/e/g/m;->p:Z

    const-string v12, "androidx.appcompat.app.AppCompatActivity"

    invoke-static {v12}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcn/jiguang/analytics/android/e/g/m;->q:Z

    const-string v13, "com.google.android.material.tabs.TabLayout"

    invoke-static {v13}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v14

    sput-boolean v14, Lcn/jiguang/analytics/android/e/g/m;->r:Z

    invoke-static {v13}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcn/jiguang/analytics/android/e/g/m;->s:Z

    invoke-static {v0}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->v:Z

    invoke-static {v2}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->w:Z

    invoke-static {v1}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->x:Z

    invoke-static {v6}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->y:Z

    invoke-static {v5}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->z:Z

    invoke-static {v3}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->A:Z

    invoke-static {v4}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->B:Z

    const-string v0, "androidx.appcompat.view.menu.ListMenuItemView"

    invoke-static {v0}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->C:Z

    invoke-static {v11}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->D:Z

    invoke-static {v12}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->E:Z

    invoke-static {v9}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->a:Z

    invoke-static {v10}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->b:Z

    invoke-static {v7}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->c:Z

    invoke-static {v8}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->d:Z

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 3

    invoke-static {p1}, Lcn/jiguang/analytics/android/e/g/m;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-static {p1}, Lcn/jiguang/analytics/android/e/g/m;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/jiguang/analytics/android/e/g/m;->G:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :catch_2
    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Landroid/view/View;)Z
    .locals 4

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->r:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v3, Lcn/jiguang/analytics/android/e/g/m;->s:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Lcom/google/android/material/tabs/TabLayout;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v1
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->v:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/Package;)Z
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lcn/jiguang/analytics/android/e/g/m;->L:Ljava/lang/Package;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jiguang/analytics/android/e/g/m;->K:Ljava/lang/Package;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jiguang/analytics/android/e/g/m;->H:Ljava/lang/Package;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jiguang/analytics/android/e/g/m;->I:Ljava/lang/Package;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/jiguang/analytics/android/e/g/m;->J:Ljava/lang/Package;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".widget"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->w:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/viewpager/widget/ViewPager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->y:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->z:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->D:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/appcompat/widget/PopupMenu;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->E:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->e:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static h(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->g:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/viewpager/widget/ViewPager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->j:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/fragment/app/FragmentActivity;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->k:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->l:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/legacy/app/FragmentPagerAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->m:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->n:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/fragment/app/FragmentPagerAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static n(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->o:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static o(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->a:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/fragment/app/FragmentPagerAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->b:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static q(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->c:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/legacy/app/FragmentPagerAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static r(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->d:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static s(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->p:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/appcompat/widget/PopupMenu;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static t(Ljava/lang/Object;)Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/e/g/m;->q:Z

    if-eqz v0, :cond_0

    instance-of p0, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
