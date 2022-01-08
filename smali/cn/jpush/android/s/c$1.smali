.class Lcn/jpush/android/s/c$1;
.super Lcn/jpush/android/t/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jpush/android/s/c;->j(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:Lcn/jpush/android/s/c;


# direct methods
.method constructor <init>(Lcn/jpush/android/s/c;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcn/jpush/android/s/c$1;->b:Lcn/jpush/android/s/c;

    iput-object p3, p0, Lcn/jpush/android/s/c$1;->a:Ljava/lang/Throwable;

    invoke-direct {p0, p2}, Lcn/jpush/android/t/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcn/jpush/android/s/c$1;->a:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
