.class public final Lorg/apache/commons/validator/routines/checkdigit/ABANumberCheckDigit;
.super Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;
.source "ABANumberCheckDigit.java"


# static fields
.field public static final ABAN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

.field private static final POSITION_WEIGHT:[I

.field private static final serialVersionUID:J = -0x7292fb5aae1e2571L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lorg/apache/commons/validator/routines/checkdigit/ABANumberCheckDigit;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/checkdigit/ABANumberCheckDigit;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/ABANumberCheckDigit;->ABAN_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 55
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/ABANumberCheckDigit;->POSITION_WEIGHT:[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 61
    invoke-direct {p0, v0}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected weightedValue(III)I
    .locals 0

    .line 81
    sget-object p2, Lorg/apache/commons/validator/routines/checkdigit/ABANumberCheckDigit;->POSITION_WEIGHT:[I

    rem-int/lit8 p3, p3, 0x3

    aget p2, p2, p3

    mul-int p1, p1, p2

    return p1
.end method
