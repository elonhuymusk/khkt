.class public final Lorg/tensorflow/lite/schema/SparseIndexVector;
.super Ljava/lang/Object;
.source "SparseIndexVector.java"


# static fields
.field public static final Int32Vector:B = 0x1t

.field public static final NONE:B = 0x0t

.field public static final Uint16Vector:B = 0x2t

.field public static final Uint8Vector:B = 0x3t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 12
    const-string v0, "NONE"

    const-string v1, "Int32Vector"

    const-string v2, "Uint16Vector"

    const-string v3, "Uint8Vector"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/schema/SparseIndexVector;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 2
    .param p0, "e"    # I

    .line 14
    sget-object v0, Lorg/tensorflow/lite/schema/SparseIndexVector;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
