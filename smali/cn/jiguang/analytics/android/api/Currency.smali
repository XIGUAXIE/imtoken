.class public final enum Lcn/jiguang/analytics/android/api/Currency;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/jiguang/analytics/android/api/Currency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/jiguang/analytics/android/api/Currency;

.field public static final enum CNY:Lcn/jiguang/analytics/android/api/Currency;

.field public static final enum USD:Lcn/jiguang/analytics/android/api/Currency;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcn/jiguang/analytics/android/api/Currency;

    const/4 v1, 0x0

    const-string v2, "CNY"

    invoke-direct {v0, v2, v1}, Lcn/jiguang/analytics/android/api/Currency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jiguang/analytics/android/api/Currency;->CNY:Lcn/jiguang/analytics/android/api/Currency;

    new-instance v0, Lcn/jiguang/analytics/android/api/Currency;

    const/4 v2, 0x1

    const-string v3, "USD"

    invoke-direct {v0, v3, v2}, Lcn/jiguang/analytics/android/api/Currency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jiguang/analytics/android/api/Currency;->USD:Lcn/jiguang/analytics/android/api/Currency;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/jiguang/analytics/android/api/Currency;

    sget-object v4, Lcn/jiguang/analytics/android/api/Currency;->CNY:Lcn/jiguang/analytics/android/api/Currency;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcn/jiguang/analytics/android/api/Currency;->$VALUES:[Lcn/jiguang/analytics/android/api/Currency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/jiguang/analytics/android/api/Currency;
    .locals 1

    const-class v0, Lcn/jiguang/analytics/android/api/Currency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/jiguang/analytics/android/api/Currency;

    return-object p0
.end method

.method public static values()[Lcn/jiguang/analytics/android/api/Currency;
    .locals 1

    sget-object v0, Lcn/jiguang/analytics/android/api/Currency;->$VALUES:[Lcn/jiguang/analytics/android/api/Currency;

    invoke-virtual {v0}, [Lcn/jiguang/analytics/android/api/Currency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/jiguang/analytics/android/api/Currency;

    return-object v0
.end method
