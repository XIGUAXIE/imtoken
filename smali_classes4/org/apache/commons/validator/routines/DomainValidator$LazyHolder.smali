.class Lorg/apache/commons/validator/routines/DomainValidator$LazyHolder;
.super Ljava/lang/Object;
.source "DomainValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/validator/routines/DomainValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final DOMAIN_VALIDATOR:Lorg/apache/commons/validator/routines/DomainValidator;

.field private static final DOMAIN_VALIDATOR_WITH_LOCAL:Lorg/apache/commons/validator/routines/DomainValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    new-instance v0, Lorg/apache/commons/validator/routines/DomainValidator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/validator/routines/DomainValidator;-><init>(ZLorg/apache/commons/validator/routines/DomainValidator$1;)V

    sput-object v0, Lorg/apache/commons/validator/routines/DomainValidator$LazyHolder;->DOMAIN_VALIDATOR:Lorg/apache/commons/validator/routines/DomainValidator;

    .line 108
    new-instance v0, Lorg/apache/commons/validator/routines/DomainValidator;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/validator/routines/DomainValidator;-><init>(ZLorg/apache/commons/validator/routines/DomainValidator$1;)V

    sput-object v0, Lorg/apache/commons/validator/routines/DomainValidator$LazyHolder;->DOMAIN_VALIDATOR_WITH_LOCAL:Lorg/apache/commons/validator/routines/DomainValidator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/apache/commons/validator/routines/DomainValidator;
    .locals 1

    .line 96
    sget-object v0, Lorg/apache/commons/validator/routines/DomainValidator$LazyHolder;->DOMAIN_VALIDATOR:Lorg/apache/commons/validator/routines/DomainValidator;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/commons/validator/routines/DomainValidator;
    .locals 1

    .line 96
    sget-object v0, Lorg/apache/commons/validator/routines/DomainValidator$LazyHolder;->DOMAIN_VALIDATOR_WITH_LOCAL:Lorg/apache/commons/validator/routines/DomainValidator;

    return-object v0
.end method
