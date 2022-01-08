.class public final Lcom/helpscout/beacon/a/a/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/helpscout/beacon/a/a/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/a/a/c/e;

    invoke-direct {v0}, Lcom/helpscout/beacon/a/a/c/e;-><init>()V

    sput-object v0, Lcom/helpscout/beacon/a/a/c/e;->a:Lcom/helpscout/beacon/a/a/c/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/core/model/SdkVersion;Lcom/helpscout/beacon/internal/core/model/SdkVersion;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/core/model/SdkVersion;",
            "Lcom/helpscout/beacon/internal/core/model/SdkVersion;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "oldVersion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUpgrade"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/helpscout/beacon/internal/core/model/SdkVersion;->compareTo(Lcom/helpscout/beacon/internal/core/model/SdkVersion;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
