.class public final Lcn/jiguang/analytics/android/e/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/jiguang/analytics/android/e/l;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;J)V
    .locals 1

    sget-object v0, Lcn/jiguang/analytics/android/e/l;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
