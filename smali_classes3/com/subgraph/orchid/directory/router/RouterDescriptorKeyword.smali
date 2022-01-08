.class public final enum Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;
.super Ljava/lang/Enum;
.source "RouterDescriptorKeyword.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum ACCEPT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum ALLOW_SINGLE_HOP_EXITS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum BANDWIDTH:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum CACHES_EXTRA_INFO:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum CONTACT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum EVENTDNS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum EXTRA_INFO_DIGEST:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum FAMILY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum FINGERPRINT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum HIBERNATING:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum HIDDEN_SERVICE_DIR:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum NTOR_ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum PLATFORM:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum PROTOCOLS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum PUBLISHED:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum READ_HISTORY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum REJECT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum ROUTER:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum ROUTER_SIGNATURE:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum SIGNING_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final enum UPTIME:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

.field public static final VARIABLE_ARGUMENT_COUNT:I = -0x1

.field public static final enum WRITE_HISTORY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;


# instance fields
.field private final argumentCount:I

.field private final keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v3, "ROUTER"

    const-string v4, "router"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ROUTER:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 9
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "BANDWIDTH"

    const-string v6, "bandwidth"

    invoke-direct {v0, v5, v4, v6, v3}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->BANDWIDTH:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 10
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/4 v5, 0x2

    const-string v6, "PLATFORM"

    const-string v7, "platform"

    invoke-direct {v0, v6, v5, v7}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->PLATFORM:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 11
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v6, "PUBLISHED"

    const-string v7, "published"

    invoke-direct {v0, v6, v3, v7, v5}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->PUBLISHED:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 12
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/4 v6, 0x4

    const/16 v7, 0xa

    const-string v8, "FINGERPRINT"

    const-string v9, "fingerprint"

    invoke-direct {v0, v8, v6, v9, v7}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->FINGERPRINT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 13
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v8, "HIBERNATING"

    const-string v9, "hibernating"

    invoke-direct {v0, v8, v1, v9, v4}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->HIBERNATING:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 14
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/4 v8, 0x6

    const-string v9, "UPTIME"

    const-string v10, "uptime"

    invoke-direct {v0, v9, v8, v10, v4}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->UPTIME:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 15
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/4 v9, 0x7

    const-string v10, "ONION_KEY"

    const-string v11, "onion-key"

    invoke-direct {v0, v10, v9, v11, v2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 16
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v10, 0x8

    const-string v11, "NTOR_ONION_KEY"

    const-string v12, "ntor-onion-key"

    invoke-direct {v0, v11, v10, v12, v4}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->NTOR_ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 17
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v11, 0x9

    const-string v12, "SIGNING_KEY"

    const-string v13, "signing-key"

    invoke-direct {v0, v12, v11, v13, v2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->SIGNING_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 18
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v12, "ACCEPT"

    const-string v13, "accept"

    invoke-direct {v0, v12, v7, v13, v4}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ACCEPT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 19
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v12, 0xb

    const-string v13, "REJECT"

    const-string v14, "reject"

    invoke-direct {v0, v13, v12, v14, v4}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->REJECT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 20
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v13, 0xc

    const-string v14, "ROUTER_SIGNATURE"

    const-string v15, "router-signature"

    invoke-direct {v0, v14, v13, v15, v2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ROUTER_SIGNATURE:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 21
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v14, 0xd

    const-string v15, "CONTACT"

    const-string v13, "contact"

    invoke-direct {v0, v15, v14, v13}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->CONTACT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 22
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v13, 0xe

    const-string v15, "FAMILY"

    const-string v14, "family"

    invoke-direct {v0, v15, v13, v14}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->FAMILY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 23
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v14, 0xf

    const-string v15, "READ_HISTORY"

    const-string v13, "read-history"

    invoke-direct {v0, v15, v14, v13}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->READ_HISTORY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 24
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v13, 0x10

    const-string v15, "WRITE_HISTORY"

    const-string v14, "write-history"

    invoke-direct {v0, v15, v13, v14}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->WRITE_HISTORY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 25
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v14, 0x11

    const-string v15, "EVENTDNS"

    const-string v13, "eventdns"

    invoke-direct {v0, v15, v14, v13, v4}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->EVENTDNS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 26
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v13, 0x12

    const-string v15, "CACHES_EXTRA_INFO"

    const-string v14, "caches-extra-info"

    invoke-direct {v0, v15, v13, v14, v2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->CACHES_EXTRA_INFO:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 27
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v14, 0x13

    const-string v15, "EXTRA_INFO_DIGEST"

    const-string v13, "extra-info-digest"

    invoke-direct {v0, v15, v14, v13, v4}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->EXTRA_INFO_DIGEST:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 28
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v13, 0x14

    const-string v15, "HIDDEN_SERVICE_DIR"

    const-string v14, "hidden-service-dir"

    invoke-direct {v0, v15, v13, v14}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->HIDDEN_SERVICE_DIR:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 29
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v14, 0x15

    const-string v15, "PROTOCOLS"

    const-string v13, "protocols"

    invoke-direct {v0, v15, v14, v13}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->PROTOCOLS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 30
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v13, "ALLOW_SINGLE_HOP_EXITS"

    const/16 v15, 0x16

    const-string v14, "allow-single-hop-exits"

    invoke-direct {v0, v13, v15, v14, v2}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ALLOW_SINGLE_HOP_EXITS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 31
    new-instance v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const-string v13, "UNKNOWN_KEYWORD"

    const/16 v14, 0x17

    const-string v15, "KEYWORD NOT FOUND"

    invoke-direct {v0, v13, v14, v15}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v13, 0x18

    new-array v13, v13, [Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    .line 3
    sget-object v14, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ROUTER:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v14, v13, v2

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->BANDWIDTH:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v13, v4

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->PLATFORM:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v13, v5

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->PUBLISHED:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v13, v3

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->FINGERPRINT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v13, v6

    sget-object v2, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->HIBERNATING:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v2, v13, v1

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->UPTIME:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v1, v13, v8

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v1, v13, v9

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->NTOR_ONION_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v1, v13, v10

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->SIGNING_KEY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v1, v13, v11

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ACCEPT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v1, v13, v7

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->REJECT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    aput-object v1, v13, v12

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ROUTER_SIGNATURE:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->CONTACT:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->FAMILY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->READ_HISTORY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->WRITE_HISTORY:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->EVENTDNS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->CACHES_EXTRA_INFO:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->EXTRA_INFO_DIGEST:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->HIDDEN_SERVICE_DIR:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v2, 0x14

    aput-object v1, v13, v2

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->PROTOCOLS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v2, 0x15

    aput-object v1, v13, v2

    sget-object v1, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->ALLOW_SINGLE_HOP_EXITS:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    const/16 v2, 0x16

    aput-object v1, v13, v2

    const/16 v1, 0x17

    aput-object v0, v13, v1

    sput-object v13, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->$VALUES:[Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-object p3, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->keyword:Ljava/lang/String;

    .line 44
    iput p4, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->argumentCount:I

    return-void
.end method

.method static findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;
    .locals 5

    .line 56
    invoke-static {}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->values()[Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 57
    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    sget-object p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;
    .locals 1

    .line 3
    const-class v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;
    .locals 1

    .line 3
    sget-object v0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->$VALUES:[Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;

    return-object v0
.end method


# virtual methods
.method getArgumentCount()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->argumentCount:I

    return v0
.end method

.method getKeyword()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/subgraph/orchid/directory/router/RouterDescriptorKeyword;->keyword:Ljava/lang/String;

    return-object v0
.end method
