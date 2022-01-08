.class Lim/imkey/imkeylibrary/bluetooth/Ble$Holder;
.super Ljava/lang/Object;
.source "Ble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/imkey/imkeylibrary/bluetooth/Ble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sInstance:Lim/imkey/imkeylibrary/bluetooth/Ble;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lim/imkey/imkeylibrary/bluetooth/Ble;

    invoke-direct {v0}, Lim/imkey/imkeylibrary/bluetooth/Ble;-><init>()V

    sput-object v0, Lim/imkey/imkeylibrary/bluetooth/Ble$Holder;->sInstance:Lim/imkey/imkeylibrary/bluetooth/Ble;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lim/imkey/imkeylibrary/bluetooth/Ble;
    .locals 1

    .line 39
    sget-object v0, Lim/imkey/imkeylibrary/bluetooth/Ble$Holder;->sInstance:Lim/imkey/imkeylibrary/bluetooth/Ble;

    return-object v0
.end method
