.class public Lcn/jpush/android/l/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x16e

.field public static b:Ljava/lang/String; = "3.6.6"

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcn/jiguang/internal/JConstants;->SDK_VERSION_INT:I

    sput v0, Lcn/jpush/android/l/a;->c:I

    return-void
.end method

.method public static a()Z
    .locals 1

    :try_start_0
    sget-boolean v0, Lcn/jpush/android/local/JPushConstants;->THIRD_ENABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/4 v0, 0x1

    return v0
.end method
