.class public final enum Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;
.super Ljava/lang/Enum;
.source "KeyCertificateKeyword.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_ADDRESS:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_IDENTITY_KEY:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_KEY_CERTIFICATE_VERSION:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_KEY_CERTIFICATION:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_KEY_CROSSCERT:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_KEY_EXPIRES:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_KEY_PUBLISHED:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum DIR_SIGNING_KEY:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum FINGERPRINT:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

.field public static final enum UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;


# instance fields
.field private final argumentCount:I

.field private final keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 8
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "DIR_KEY_CERTIFICATE_VERSION"

    const-string v4, "dir-key-certificate-version"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_CERTIFICATE_VERSION:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 9
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const-string v3, "DIR_ADDRESS"

    const-string v4, "dir-address"

    invoke-direct {v0, v3, v1, v4, v1}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_ADDRESS:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 10
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const/4 v3, 0x2

    const-string v4, "FINGERPRINT"

    const-string v5, "fingerprint"

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->FINGERPRINT:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 11
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const/4 v4, 0x3

    const-string v5, "DIR_IDENTITY_KEY"

    const-string v6, "dir-identity-key"

    invoke-direct {v0, v5, v4, v6, v2}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_IDENTITY_KEY:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 12
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const/4 v5, 0x4

    const-string v6, "DIR_KEY_PUBLISHED"

    const-string v7, "dir-key-published"

    invoke-direct {v0, v6, v5, v7, v3}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_PUBLISHED:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 13
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const/4 v6, 0x5

    const-string v7, "DIR_KEY_EXPIRES"

    const-string v8, "dir-key-expires"

    invoke-direct {v0, v7, v6, v8, v3}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_EXPIRES:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 14
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const/4 v7, 0x6

    const-string v8, "DIR_SIGNING_KEY"

    const-string v9, "dir-signing-key"

    invoke-direct {v0, v8, v7, v9, v2}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_SIGNING_KEY:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 15
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const/4 v8, 0x7

    const-string v9, "DIR_KEY_CROSSCERT"

    const-string v10, "dir-key-crosscert"

    invoke-direct {v0, v9, v8, v10, v2}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_CROSSCERT:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 16
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const/16 v9, 0x8

    const-string v10, "DIR_KEY_CERTIFICATION"

    const-string v11, "dir-key-certification"

    invoke-direct {v0, v10, v9, v11, v2}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_CERTIFICATION:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 17
    new-instance v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const/16 v10, 0x9

    const-string v11, "UNKNOWN_KEYWORD"

    const-string v12, "KEYWORD NOT FOUND"

    invoke-direct {v0, v11, v10, v12, v2}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    .line 3
    sget-object v12, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_CERTIFICATE_VERSION:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v12, v11, v2

    sget-object v2, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_ADDRESS:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v2, v11, v1

    sget-object v1, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->FINGERPRINT:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v1, v11, v3

    sget-object v1, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_IDENTITY_KEY:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v1, v11, v4

    sget-object v1, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_PUBLISHED:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v1, v11, v5

    sget-object v1, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_EXPIRES:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v1, v11, v6

    sget-object v1, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_SIGNING_KEY:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v1, v11, v7

    sget-object v1, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_CROSSCERT:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v1, v11, v8

    sget-object v1, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->DIR_KEY_CERTIFICATION:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->$VALUES:[Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->keyword:Ljava/lang/String;

    .line 24
    iput p4, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->argumentCount:I

    return-void
.end method

.method static findKeyword(Ljava/lang/String;)Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;
    .locals 5

    .line 36
    invoke-static {}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->values()[Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 37
    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    sget-object p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->UNKNOWN_KEYWORD:Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;
    .locals 1

    .line 3
    const-class v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;
    .locals 1

    .line 3
    sget-object v0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->$VALUES:[Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;

    return-object v0
.end method


# virtual methods
.method getArgumentCount()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->argumentCount:I

    return v0
.end method

.method getKeyword()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/subgraph/orchid/directory/certificate/KeyCertificateKeyword;->keyword:Ljava/lang/String;

    return-object v0
.end method
