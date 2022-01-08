.class public final enum Lcom/pingplusplus/android/Pingpp$CmbPayMethod;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/Pingpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmbPayMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pingplusplus/android/Pingpp$CmbPayMethod;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/pingplusplus/android/Pingpp$CmbPayMethod;",
        "",
        "method",
        "",
        "(Ljava/lang/String;II)V",
        "getMethod",
        "()I",
        "AUTO",
        "APP_ONLY",
        "H5_ONLY",
        "pingpp-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

.field public static final enum APP_ONLY:Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

.field public static final enum AUTO:Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

.field public static final enum H5_ONLY:Lcom/pingplusplus/android/Pingpp$CmbPayMethod;


# instance fields
.field private final method:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    new-instance v2, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    const/4 v3, 0x0

    const-string v4, "AUTO"

    invoke-direct {v2, v4, v3, v0}, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->AUTO:Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    aput-object v2, v1, v3

    new-instance v0, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    const/4 v2, 0x1

    const-string v3, "APP_ONLY"

    invoke-direct {v0, v3, v2, v2}, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->APP_ONLY:Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    aput-object v0, v1, v2

    new-instance v0, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    const/4 v2, 0x2

    const-string v3, "H5_ONLY"

    invoke-direct {v0, v3, v2, v2}, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->H5_ONLY:Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    aput-object v0, v1, v2

    sput-object v1, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->$VALUES:[Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->method:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pingplusplus/android/Pingpp$CmbPayMethod;
    .locals 1

    const-class v0, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    return-object p0
.end method

.method public static values()[Lcom/pingplusplus/android/Pingpp$CmbPayMethod;
    .locals 1

    sget-object v0, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->$VALUES:[Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    invoke-virtual {v0}, [Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pingplusplus/android/Pingpp$CmbPayMethod;

    return-object v0
.end method


# virtual methods
.method public final getMethod()I
    .locals 1

    iget v0, p0, Lcom/pingplusplus/android/Pingpp$CmbPayMethod;->method:I

    return v0
.end method
