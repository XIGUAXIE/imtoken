.class public Lcom/sensorsdata/analytics/android/sdk/AppStateManager;
.super Ljava/lang/Object;
.source "AppStateManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static volatile mSingleton:Lcom/sensorsdata/analytics/android/sdk/AppStateManager;


# instance fields
.field private mActivityCount:I

.field private mCurrentRootWindowsHashCode:I

.field private mForeGroundActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mForeGroundActivity:Ljava/lang/ref/WeakReference;

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentRootWindowsHashCode:I

    return-void
.end method

.method public static getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;
    .locals 2

    .line 41
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;-><init>()V

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mSingleton:Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    return-object v0
.end method

.method private setForegroundActivity(Landroid/app/Activity;)V
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mForeGroundActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getCurrentRootWindowsHashCode()I
    .locals 2

    .line 65
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentRootWindowsHashCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mForeGroundActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mForeGroundActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentRootWindowsHashCode:I

    .line 69
    :cond_0
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentRootWindowsHashCode:I

    return v0
.end method

.method public getForegroundActivity()Landroid/app/Activity;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mForeGroundActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method isInBackground()Z
    .locals 1

    .line 61
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mActivityCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 76
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentRootWindowsHashCode:I

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 96
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentRootWindowsHashCode:I

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 87
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mCurrentRootWindowsHashCode:I

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 82
    iget p1, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mActivityCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mActivityCount:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 102
    iget p1, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mActivityCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->mActivityCount:I

    return-void
.end method
