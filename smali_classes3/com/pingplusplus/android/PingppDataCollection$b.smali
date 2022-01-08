.class public final enum Lcom/pingplusplus/android/PingppDataCollection$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/PingppDataCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pingplusplus/android/PingppDataCollection$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/pingplusplus/android/PingppDataCollection$b;

.field public static final enum c:Lcom/pingplusplus/android/PingppDataCollection$b;

.field private static final synthetic d:[Lcom/pingplusplus/android/PingppDataCollection$b;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pingplusplus/android/PingppDataCollection$b;

    new-instance v1, Lcom/pingplusplus/android/PingppDataCollection$b;

    const/4 v2, 0x0

    const-string v3, "SDK"

    invoke-direct {v1, v3, v2, v2}, Lcom/pingplusplus/android/PingppDataCollection$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/pingplusplus/android/PingppDataCollection$b;->b:Lcom/pingplusplus/android/PingppDataCollection$b;

    aput-object v1, v0, v2

    new-instance v1, Lcom/pingplusplus/android/PingppDataCollection$b;

    const/4 v2, 0x1

    const-string v3, "ONE"

    invoke-direct {v1, v3, v2, v2}, Lcom/pingplusplus/android/PingppDataCollection$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/pingplusplus/android/PingppDataCollection$b;->c:Lcom/pingplusplus/android/PingppDataCollection$b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/pingplusplus/android/PingppDataCollection$b;->d:[Lcom/pingplusplus/android/PingppDataCollection$b;

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

    iput p3, p0, Lcom/pingplusplus/android/PingppDataCollection$b;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pingplusplus/android/PingppDataCollection$b;
    .locals 1

    const-class v0, Lcom/pingplusplus/android/PingppDataCollection$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pingplusplus/android/PingppDataCollection$b;

    return-object p0
.end method

.method public static values()[Lcom/pingplusplus/android/PingppDataCollection$b;
    .locals 1

    sget-object v0, Lcom/pingplusplus/android/PingppDataCollection$b;->d:[Lcom/pingplusplus/android/PingppDataCollection$b;

    invoke-virtual {v0}, [Lcom/pingplusplus/android/PingppDataCollection$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pingplusplus/android/PingppDataCollection$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/pingplusplus/android/PingppDataCollection$b;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/pingplusplus/android/PingppDataCollection$b;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
