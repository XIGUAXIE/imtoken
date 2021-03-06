.class public Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static sClassNameCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHaveCustomRecyclerView:Z

.field private static sHaveRecyclerView:Z

.field private static sRecyclerViewClass:Ljava/lang/Class;

.field private static sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

.field private static sViewCache:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->haveRecyclerView()Z

    move-result v0

    sput-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sHaveRecyclerView:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAndInvalidate(Landroid/view/View;)V
    .locals 1

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private static checkCustomRecyclerView(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 295
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sHaveRecyclerView:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sHaveCustomRecyclerView:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "RecyclerView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 297
    :try_start_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->findRecyclerInSuper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_0

    .line 298
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewClass:Ljava/lang/Class;

    const/4 p0, 0x1

    .line 299
    sput-boolean p0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sHaveCustomRecyclerView:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static clear()V
    .locals 1

    .line 606
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    return-void
.end method

.method private static findRecyclerInSuper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_2

    .line 308
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "getChildAdapterPosition"

    new-array v3, v1, [Ljava/lang/Class;

    .line 310
    const-class v4, Landroid/view/View;

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 314
    :goto_1
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    :try_start_1
    const-string v2, "getChildPosition"

    new-array v1, v1, [Ljava/lang/Class;

    .line 316
    const-class v3, Landroid/view/View;

    aput-object v3, v1, v0

    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 321
    :cond_0
    :goto_2
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    return-object p0

    .line 324
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 72
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sClassNameCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sClassNameCache:Landroid/util/LruCache;

    .line 75
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sClassNameCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 77
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 78
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Anonymous"

    .line 82
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_3

    .line 83
    const-class v1, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;

    monitor-enter v1

    .line 84
    :try_start_0
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sClassNameCache:Landroid/util/LruCache;

    invoke-virtual {v2, p0, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 87
    :cond_3
    :goto_1
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->checkCustomRecyclerView(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method private static getChildAdapterPositionInRecyclerView(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 6

    .line 217
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfRecyclerView(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 219
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getChildAdapterPosition"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 223
    :goto_0
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 225
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getChildPosition"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    :catch_1
    :cond_0
    :try_start_2
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 232
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 234
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    return p0

    .line 242
    :cond_1
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sHaveCustomRecyclerView:Z

    if-eqz v0, :cond_2

    .line 243
    invoke-static {p1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->invokeCRVGetChildAdapterPositionMethod(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0

    :catch_2
    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static getCurrentItem(Landroid/view/View;)I
    .locals 4

    .line 250
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCurrentItem"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 251
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 253
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static getElementSelector(Landroid/view/View;)Ljava/lang/String;
    .locals 5

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 482
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 483
    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getChildIndex(Landroid/view/ViewParent;Landroid/view/View;)I

    move-result v2

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 486
    check-cast v1, Landroid/view/ViewGroup;

    move-object p0, v1

    :cond_1
    if-nez v2, :cond_0

    .line 490
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 491
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 492
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 493
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-eq v2, v3, :cond_2

    const-string v3, "/"

    .line 495
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getItemData(Landroid/view/View;)Ljava/lang/Object;
    .locals 4

    .line 267
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getItemData"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 268
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMainWindowCount([Landroid/view/View;)I
    .locals 5

    .line 416
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->init()V

    .line 417
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    if-eqz v3, :cond_0

    .line 419
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getWindowPrefix(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getMainWindowPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static getTabLayoutContent(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const-string v0, "com.google.android.material.tabs.TabLayout$Tab"

    const/4 v1, 0x0

    .line 763
    :try_start_0
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "getText"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 766
    invoke-static {p0, v2, v4}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 768
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "mCustomView"

    const-string v4, "customView"

    .line 771
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_2

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 774
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 775
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 777
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 780
    :cond_1
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method

.method static getViewContentAndType(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;
    .locals 5

    .line 638
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 641
    instance-of v1, p0, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "CheckBox"

    .line 642
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    move-object v1, p0

    check-cast v1, Landroid/widget/CheckBox;

    .line 644
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_2

    .line 645
    :cond_0
    instance-of v1, p0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    const-string v1, "RadioButton"

    .line 646
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    move-object v1, p0

    check-cast v1, Landroid/widget/RadioButton;

    .line 648
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_2

    .line 649
    :cond_1
    instance-of v1, p0, Landroid/widget/ToggleButton;

    if-eqz v1, :cond_2

    const-string v1, "ToggleButton"

    .line 650
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getCompoundButtonText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 652
    :cond_2
    instance-of v1, p0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_3

    .line 653
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewTypeByReflect(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getCompoundButtonText(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 655
    :cond_3
    instance-of v1, p0, Landroid/widget/Button;

    if-eqz v1, :cond_4

    const-string v1, "Button"

    .line 656
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 657
    move-object v1, p0

    check-cast v1, Landroid/widget/Button;

    .line 658
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_2

    .line 659
    :cond_4
    instance-of v1, p0, Landroid/widget/CheckedTextView;

    if-eqz v1, :cond_5

    const-string v1, "CheckedTextView"

    .line 660
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    move-object v1, p0

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 662
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_2

    .line 663
    :cond_5
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    const-string v1, "TextView"

    .line 664
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    .line 666
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_2

    .line 667
    :cond_6
    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    const-string v1, "ImageView"

    .line 668
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    move-object v1, p0

    check-cast v1, Landroid/widget/ImageView;

    .line 670
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 671
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 673
    :cond_7
    instance-of v1, p0, Landroid/widget/RatingBar;

    if-eqz v1, :cond_8

    const-string v1, "RatingBar"

    .line 674
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 675
    move-object v1, p0

    check-cast v1, Landroid/widget/RatingBar;

    .line 676
    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 677
    :cond_8
    instance-of v1, p0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_9

    const-string v1, "SeekBar"

    .line 678
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    move-object v1, p0

    check-cast v1, Landroid/widget/SeekBar;

    .line 680
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 681
    :cond_9
    instance-of v1, p0, Landroid/widget/Spinner;

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    const-string v1, "Spinner"

    .line 682
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    move-object v4, p0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v1, v4}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 687
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    :cond_a
    :goto_0
    move-object v2, v1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    .line 690
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 692
    :cond_b
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfTabView(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 693
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getTabLayoutContent(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "TabLayout"

    .line 694
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 695
    :cond_c
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfBottomNavigationItemView(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 696
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getItemData(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    :try_start_1
    const-string v3, "androidx.appcompat.view.menu.MenuItemImpl"

    .line 699
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_10

    const-string v4, "mTitle"

    .line 702
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 703
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v3, :cond_10

    goto :goto_0

    :catch_2
    nop

    goto :goto_2

    .line 711
    :cond_d
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfNavigationView(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 712
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Open"

    goto :goto_1

    :cond_e
    const-string v1, "Close"

    :goto_1
    move-object v2, v1

    const-string v1, "NavigationView"

    .line 713
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 714
    :cond_f
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_10

    .line 715
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getViewGroupTypeByReflect(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 717
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 719
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    move-object v4, p0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-static {v1, v4}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 721
    :try_start_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 722
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 730
    :cond_10
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_11

    .line 731
    move-object v1, p0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    .line 734
    :cond_11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 735
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 738
    :cond_12
    instance-of p0, p0, Landroid/widget/EditText;

    const-string v1, ""

    if-eqz p0, :cond_13

    move-object v2, v1

    .line 742
    :cond_13
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_3

    :cond_14
    move-object v1, v2

    .line 745
    :goto_3
    new-instance p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getViewNode(Landroid/view/View;I)Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;
    .locals 21

    move-object/from16 v0, p0

    .line 520
    invoke-static/range {p0 .. p1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewPosition(Landroid/view/View;I)I

    move-result v1

    .line 521
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 525
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isDecorView(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_f

    .line 526
    :cond_1
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_f

    .line 527
    move-object v4, v2

    check-cast v4, Landroid/view/View;

    .line 529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 534
    instance-of v8, v4, Landroid/widget/ExpandableListView;

    const-string v9, "%d"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "[0]"

    if-eqz v8, :cond_5

    .line 535
    move-object v2, v4

    check-cast v2, Landroid/widget/ExpandableListView;

    .line 536
    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v13

    .line 537
    invoke-static {v13, v14}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v8

    const/4 v15, 0x2

    const-string v3, "]/"

    if-eq v8, v15, :cond_3

    .line 538
    invoke-static {v13, v14}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v1

    .line 539
    invoke-static {v13, v14}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    const/4 v8, -0x1

    const-string v13, "/ELVG["

    if-eq v2, v8, :cond_2

    .line 541
    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v9, v15, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v9, v10

    const-string v10, "%d:%d"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 542
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]/ELVC[-]/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]/ELVC["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v8

    goto/16 :goto_2

    .line 545
    :cond_2
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v11

    invoke-static {v2, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v8, "/ELVG[-]/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v2

    goto/16 :goto_2

    .line 549
    :cond_3
    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v8

    if-ge v1, v8, :cond_4

    const-string v2, "/ELH["

    .line 550
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 553
    :cond_4
    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v8

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v8, v2

    sub-int/2addr v1, v8

    const-string v2, "/ELF["

    .line 554
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 557
    :cond_5
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isListView(Landroid/view/View;)Z

    move-result v3

    const-string v8, "]"

    const-string v13, "["

    const-string v14, "/"

    if-eqz v3, :cond_6

    .line 558
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v11

    invoke-static {v2, v9, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 559
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[-]"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 561
    :cond_6
    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfSupportSwipeRefreshLayout(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 562
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 564
    :cond_7
    invoke-static {v4, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfFragmentRootView(Landroid/view/View;Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 565
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v3, 0x0

    goto :goto_2

    .line 569
    :cond_8
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 570
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_a

    .line 571
    check-cast v1, Landroid/view/View;

    .line 572
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    if-nez v3, :cond_9

    .line 573
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    .line 575
    :cond_9
    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 576
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object v3, v1

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    .line 580
    :goto_1
    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getChildIndex(Landroid/view/ViewParent;Landroid/view/View;)I

    move-result v1

    .line 581
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isDecorView(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 585
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 586
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 588
    :cond_b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 589
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 592
    :cond_c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 593
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    if-nez v1, :cond_d

    .line 594
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    .line 596
    :cond_d
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sViewCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 598
    :cond_e
    invoke-static/range {p0 .. p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewContentAndType(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;

    move-result-object v0

    .line 599
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;->getViewContent()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;->getViewType()Ljava/lang/String;

    move-result-object v20

    move-object v15, v1

    move-object/from16 v16, v3

    invoke-direct/range {v15 .. v20}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_f
    move-object v0, v3

    return-object v0
.end method

.method static getViewPathAndPosition(Landroid/view/View;)Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;
    .locals 8

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 442
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 444
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 447
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    instance-of v4, v1, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 452
    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_4

    .line 454
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 455
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 456
    invoke-static {v4, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getViewNode(Landroid/view/View;I)Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 458
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 459
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    .line 461
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v7, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_1
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;->getViewOriginalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;->getViewPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;->getViewPosition()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 468
    :cond_2
    instance-of v1, v4, Landroid/view/ViewGroup;

    if-nez v1, :cond_3

    goto :goto_2

    .line 471
    :cond_3
    move-object v1, v4

    check-cast v1, Landroid/view/ViewGroup;

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 473
    :cond_4
    :goto_2
    new-instance p0, Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/visual/ViewNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_5
    return-object v5
.end method

.method private static getViewPosition(Landroid/view/View;I)I
    .locals 2

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 504
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 505
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfAndroidXViewPager(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfSupportViewPager(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_1

    .line 508
    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_1

    .line 509
    :cond_1
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfRecyclerView(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 510
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getChildAdapterPositionInRecyclerView(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result p0

    if-ltz p0, :cond_3

    move p1, p0

    goto :goto_1

    .line 506
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getCurrentItem(Landroid/view/View;)I

    move-result p1

    :cond_3
    :goto_1
    return p1
.end method

.method private static haveRecyclerView()Z
    .locals 2

    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    const/4 v1, 0x1

    .line 281
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 285
    :catch_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    const/4 v0, 0x0

    return v0
.end method

.method static instanceOfAndroidXListMenuItemView(Ljava/lang/Object;)Z
    .locals 1

    :try_start_0
    const-string v0, "androidx.appcompat.view.menu.ListMenuItemView"

    .line 157
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static instanceOfAndroidXViewPager(Ljava/lang/Object;)Z
    .locals 1

    :try_start_0
    const-string v0, "androidx.viewpager.widget.ViewPager"

    .line 105
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method static instanceOfBottomNavigationItemView(Ljava/lang/Object;)Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.android.material.bottomnavigation.BottomNavigationItemView"

    .line 168
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static instanceOfFragmentRootView(Landroid/view/View;Landroid/view/View;)Ljava/lang/Object;
    .locals 0

    .line 194
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getFragmentFromView(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    .line 195
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/AopUtil;->getFragmentFromView(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static instanceOfNavigationView(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "com.google.android.material.navigation.NavigationView"

    .line 179
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :catch_1
    const/4 p0, 0x0

    return p0
.end method

.method public static instanceOfRecyclerView(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    .line 115
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 120
    :catch_1
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sHaveCustomRecyclerView:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method static instanceOfSupportListMenuItemView(Ljava/lang/Object;)Z
    .locals 1

    :try_start_0
    const-string v0, "androidx.appcompat.view.menu.ListMenuItemView"

    .line 146
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static instanceOfSupportSwipeRefreshLayout(Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "androidx.swiperefreshlayout.widget.SwipeRefreshLayout"

    .line 132
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :catch_1
    const/4 p0, 0x0

    return p0
.end method

.method private static instanceOfSupportViewPager(Ljava/lang/Object;)Z
    .locals 1

    :try_start_0
    const-string v0, "androidx.viewpager.widget.ViewPager"

    .line 95
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static instanceOfTabView(Landroid/view/View;)Ljava/lang/Object;
    .locals 3

    const-string v0, "com.google.android.material.tabs.TabLayout$TabView"

    .line 750
    :try_start_0
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->getCurrentClass([Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mTab"

    const-string v2, "tab"

    .line 752
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ReflectUtil;->findField(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static instanceOfX5WebView(Ljava/lang/Object;)Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.smtt.sdk.WebView"

    .line 205
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static invalidateLayerTypeView([Landroid/view/View;)V
    .locals 4

    .line 385
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 386
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->viewVisibilityInParents(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->checkAndInvalidate(Landroid/view/View;)V

    .line 388
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 389
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->invalidateViewGroup(Landroid/view/ViewGroup;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static invalidateViewGroup(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    .line 403
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 404
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 405
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->checkAndInvalidate(Landroid/view/View;)V

    .line 407
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 408
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->invalidateViewGroup(Landroid/view/ViewGroup;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static invokeCRVGetChildAdapterPositionMethod(Landroid/view/View;Landroid/view/View;)I
    .locals 3

    .line 331
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 332
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->sRecyclerViewGetChildAdapterPositionMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static isListView(Landroid/view/View;)Z
    .locals 1

    .line 343
    instance-of v0, p0, Landroid/widget/AdapterView;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfRecyclerView(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfAndroidXViewPager(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->instanceOfSupportViewPager(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static isTrackEvent(Landroid/view/View;Z)Z
    .locals 2

    .line 612
    instance-of v0, p0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_3

    return v1

    .line 616
    :cond_0
    instance-of v0, p0, Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    if-nez p1, :cond_3

    return v1

    .line 620
    :cond_1
    instance-of v0, p0, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    return v1

    .line 624
    :cond_2
    instance-of v0, p0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    return v1

    .line 629
    :cond_3
    instance-of p0, p0, Landroid/widget/RatingBar;

    if-eqz p0, :cond_4

    if-nez p1, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static isViewSelfVisible(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 348
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isDecorView(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 354
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-lez v1, :cond_5

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v0
.end method

.method public static isWindowNeedTraverse(Landroid/view/View;Ljava/lang/String;Z)Z
    .locals 3

    .line 426
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getCurrentRootWindowsHashCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 429
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    return v2

    .line 433
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getMainWindowPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static viewVisibilityInParents(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 367
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 370
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 371
    :cond_2
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_4

    .line 372
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isViewSelfVisible(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 375
    :cond_3
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method
