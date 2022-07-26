.class public Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;,
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;,
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$MeasureType;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field private static final DEBUG:Z = false

.field public static final EXACTLY:I = 0x40000000

.field public static final FIXED:I = -0x3

.field public static final MATCH_PARENT:I = -0x1

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .registers 3
    .param p1, "constraintWidgetContainer"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 75
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 76
    return-void
.end method

.method private measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z
    .registers 13
    .param p1, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "useCurrentDimensions"    # Z

    .line 403
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 404
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 405
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 406
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 407
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 408
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    .line 410
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    .line 411
    .local v0, "horizontalMatchConstraints":Z
    :goto_35
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_3f

    const/4 v2, 0x1

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    .line 412
    .local v2, "verticalMatchConstraints":Z
    :goto_40
    const/4 v4, 0x0

    if-eqz v0, :cond_4b

    iget v5, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_4b

    const/4 v5, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v5, 0x0

    .line 413
    .local v5, "horizontalUseRatio":Z
    :goto_4c
    if-eqz v2, :cond_56

    iget v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_56

    const/4 v4, 0x1

    goto :goto_57

    :cond_56
    const/4 v4, 0x0

    .line 415
    .local v4, "verticalUseRatio":Z
    :goto_57
    const/4 v6, 0x4

    if-eqz v5, :cond_66

    .line 416
    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v7, v7, v1

    if-ne v7, v6, :cond_66

    .line 417
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 420
    :cond_66
    if-eqz v4, :cond_74

    .line 421
    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v3, v7, v3

    if-ne v3, v6, :cond_74

    .line 422
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v6, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 426
    :cond_74
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 427
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 428
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 429
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 430
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 431
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean v1, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    .line 432
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    return v1
.end method

.method private measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .registers 14
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 79
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 80
    .local v0, "childCount":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v1

    .line 81
    .local v1, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_5d

    .line 82
    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 83
    .local v3, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v4, :cond_1a

    .line 84
    goto :goto_5a

    .line 87
    :cond_1a
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v4, :cond_2b

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v4, :cond_2b

    .line 88
    goto :goto_5a

    .line 91
    :cond_2b
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    .line 92
    .local v5, "widthBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    .line 94
    .local v7, "heightBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_46

    iget v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v8, v6, :cond_46

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_46

    iget v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v8, v6, :cond_46

    goto :goto_47

    :cond_46
    const/4 v6, 0x0

    .line 99
    .local v6, "skip":Z
    :goto_47
    if-eqz v6, :cond_4a

    .line 102
    goto :goto_5a

    .line 105
    :cond_4a
    invoke-direct {p0, v1, v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    .line 106
    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v4, :cond_5a

    .line 107
    iget-object v4, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v8, v4, Landroidx/constraintlayout/solver/Metrics;->measuredWidgets:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v4, Landroidx/constraintlayout/solver/Metrics;->measuredWidgets:J

    .line 81
    .end local v3    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v5    # "widthBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v6    # "skip":Z
    .end local v7    # "heightBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_5a
    :goto_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 110
    .end local v2    # "i":I
    :cond_5d
    invoke-interface {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    .line 111
    return-void
.end method

.method private solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V
    .registers 8
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 119
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v0

    .line 120
    .local v0, "minWidth":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v1

    .line 121
    .local v1, "minHeight":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 122
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 123
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 124
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 125
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 126
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 130
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 135
    return-void
.end method


# virtual methods
.method public solverMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;IIIIIIIII)J
    .registers 44
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "optimizationLevel"    # I
    .param p3, "paddingX"    # I
    .param p4, "paddingY"    # I
    .param p5, "widthMode"    # I
    .param p6, "widthSize"    # I
    .param p7, "heightMode"    # I
    .param p8, "heightSize"    # I
    .param p9, "lastMeasureWidth"    # I
    .param p10, "lastMeasureHeight"    # I

    .line 156
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    .line 157
    .local v5, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    const-wide/16 v6, 0x0

    .line 159
    .local v6, "layoutTime":J
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 160
    .local v8, "childCount":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v9

    .line 161
    .local v9, "startingWidth":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v10

    .line 163
    .local v10, "startingHeight":I
    const/16 v11, 0x80

    invoke-static {v2, v11}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v11

    .line 164
    .local v11, "optimizeWrap":Z
    if-nez v11, :cond_31

    const/16 v14, 0x40

    invoke-static {v2, v14}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v14

    if-eqz v14, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 v14, 0x0

    goto :goto_32

    :cond_31
    :goto_31
    const/4 v14, 0x1

    .line 166
    .local v14, "optimize":Z
    :goto_32
    if-eqz v14, :cond_a5

    .line 167
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_35
    if-ge v15, v8, :cond_a2

    .line 168
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 169
    .local v13, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v2, :cond_49

    const/4 v2, 0x1

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    .line 170
    .local v2, "matchWidth":Z
    :goto_4a
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v12

    move/from16 v18, v14

    .end local v14    # "optimize":Z
    .local v18, "optimize":Z
    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v14, :cond_56

    const/4 v12, 0x1

    goto :goto_57

    :cond_56
    const/4 v12, 0x0

    .line 171
    .local v12, "matchHeight":Z
    :goto_57
    if-eqz v2, :cond_67

    if-eqz v12, :cond_67

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v14

    const/16 v19, 0x0

    cmpl-float v14, v14, v19

    if-lez v14, :cond_67

    const/4 v14, 0x1

    goto :goto_68

    :cond_67
    const/4 v14, 0x0

    .line 172
    .local v14, "ratio":Z
    :goto_68
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v19

    if-eqz v19, :cond_75

    if-eqz v14, :cond_75

    .line 173
    const/16 v18, 0x0

    .line 174
    move/from16 v14, v18

    goto :goto_a9

    .line 176
    :cond_75
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v19

    if-eqz v19, :cond_82

    if-eqz v14, :cond_82

    .line 177
    const/16 v18, 0x0

    .line 178
    move/from16 v14, v18

    goto :goto_a9

    .line 180
    :cond_82
    move/from16 v19, v2

    .end local v2    # "matchWidth":Z
    .local v19, "matchWidth":Z
    instance-of v2, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v2, :cond_8b

    .line 181
    const/4 v2, 0x0

    .line 182
    .end local v18    # "optimize":Z
    .local v2, "optimize":Z
    move v14, v2

    goto :goto_a9

    .line 184
    .end local v2    # "optimize":Z
    .restart local v18    # "optimize":Z
    :cond_8b
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v2

    if-nez v2, :cond_9f

    .line 185
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v2

    if-eqz v2, :cond_98

    goto :goto_9f

    .line 167
    .end local v12    # "matchHeight":Z
    .end local v13    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "ratio":Z
    .end local v19    # "matchWidth":Z
    :cond_98
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p2

    move/from16 v14, v18

    goto :goto_35

    .line 186
    .restart local v12    # "matchHeight":Z
    .restart local v13    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v14    # "ratio":Z
    .restart local v19    # "matchWidth":Z
    :cond_9f
    :goto_9f
    const/4 v2, 0x0

    .line 187
    .end local v18    # "optimize":Z
    .restart local v2    # "optimize":Z
    move v14, v2

    goto :goto_a9

    .line 167
    .end local v2    # "optimize":Z
    .end local v12    # "matchHeight":Z
    .end local v13    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v19    # "matchWidth":Z
    .local v14, "optimize":Z
    :cond_a2
    move/from16 v18, v14

    .end local v14    # "optimize":Z
    .restart local v18    # "optimize":Z
    goto :goto_a7

    .line 166
    .end local v15    # "i":I
    .end local v18    # "optimize":Z
    .restart local v14    # "optimize":Z
    :cond_a5
    move/from16 v18, v14

    .line 192
    .end local v14    # "optimize":Z
    .restart local v18    # "optimize":Z
    :goto_a7
    move/from16 v14, v18

    .end local v18    # "optimize":Z
    .restart local v14    # "optimize":Z
    :goto_a9
    const-wide/16 v12, 0x1

    if-eqz v14, :cond_bb

    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v2, :cond_bb

    .line 193
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-wide/from16 v18, v6

    .end local v6    # "layoutTime":J
    .local v18, "layoutTime":J
    iget-wide v6, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    add-long/2addr v6, v12

    iput-wide v6, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    goto :goto_bd

    .line 192
    .end local v18    # "layoutTime":J
    .restart local v6    # "layoutTime":J
    :cond_bb
    move-wide/from16 v18, v6

    .line 196
    .end local v6    # "layoutTime":J
    .restart local v18    # "layoutTime":J
    :goto_bd
    const/4 v2, 0x0

    .line 198
    .local v2, "allSolved":Z
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v6, :cond_c4

    if-eq v4, v6, :cond_c6

    :cond_c4
    if-eqz v11, :cond_c8

    :cond_c6
    const/4 v7, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v7, 0x0

    :goto_c9
    and-int/2addr v7, v14

    .line 200
    .end local v14    # "optimize":Z
    .local v7, "optimize":Z
    const/4 v14, 0x0

    .line 202
    .local v14, "computations":I
    if-eqz v7, :cond_134

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMaxWidth()I

    move-result v15

    move/from16 v12, p6

    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 207
    .end local p6    # "widthSize":I
    .local v12, "widthSize":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMaxHeight()I

    move-result v13

    move/from16 v15, p8

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 209
    .end local p8    # "heightSize":I
    .local v13, "heightSize":I
    if-ne v3, v6, :cond_ef

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v15

    if-eq v15, v12, :cond_ef

    .line 210
    invoke-virtual {v1, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 213
    :cond_ef
    if-ne v4, v6, :cond_fd

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    if-eq v15, v13, :cond_fd

    .line 214
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 217
    :cond_fd
    if-ne v3, v6, :cond_107

    if-ne v4, v6, :cond_107

    .line 218
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v2

    .line 219
    const/4 v14, 0x2

    goto :goto_123

    .line 221
    :cond_107
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v2

    .line 222
    if-ne v3, v6, :cond_117

    .line 223
    const/4 v15, 0x0

    invoke-virtual {v1, v11, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v17

    and-int v2, v2, v17

    .line 224
    add-int/lit8 v14, v14, 0x1

    goto :goto_118

    .line 222
    :cond_117
    const/4 v15, 0x0

    .line 226
    :goto_118
    if-ne v4, v6, :cond_123

    .line 227
    const/4 v15, 0x1

    invoke-virtual {v1, v11, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v22

    and-int v2, v2, v22

    .line 228
    add-int/lit8 v14, v14, 0x1

    .line 231
    :cond_123
    :goto_123
    if-eqz v2, :cond_132

    .line 232
    if-ne v3, v6, :cond_129

    const/4 v15, 0x1

    goto :goto_12a

    :cond_129
    const/4 v15, 0x0

    :goto_12a
    if-ne v4, v6, :cond_12e

    const/4 v6, 0x1

    goto :goto_12f

    :cond_12e
    const/4 v6, 0x0

    :goto_12f
    invoke-virtual {v1, v15, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    .line 245
    :cond_132
    const/4 v6, 0x0

    goto :goto_13a

    .line 202
    .end local v12    # "widthSize":I
    .end local v13    # "heightSize":I
    .restart local p6    # "widthSize":I
    .restart local p8    # "heightSize":I
    :cond_134
    move/from16 v12, p6

    move/from16 v15, p8

    const/4 v6, 0x0

    move v13, v15

    .line 245
    .end local p6    # "widthSize":I
    .end local p8    # "heightSize":I
    .restart local v12    # "widthSize":I
    .restart local v13    # "heightSize":I
    :goto_13a
    if-eqz v2, :cond_154

    const/4 v15, 0x2

    if-eq v14, v15, :cond_140

    goto :goto_154

    :cond_140
    move/from16 p6, v2

    move-object/from16 v30, v5

    move/from16 v17, v7

    move/from16 v22, v8

    move v5, v9

    move v6, v10

    move/from16 v23, v11

    move/from16 p8, v12

    move/from16 v24, v13

    move/from16 v25, v14

    goto/16 :goto_3d3

    .line 246
    :cond_154
    :goto_154
    if-lez v8, :cond_159

    .line 247
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 252
    :cond_159
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v15

    .line 255
    .local v15, "optimizations":I
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 258
    .local v6, "sizeDependentWidgetsCount":I
    if-lez v8, :cond_16d

    .line 259
    move/from16 p6, v2

    .end local v2    # "allSolved":Z
    .local p6, "allSolved":Z
    const-string v2, "First pass"

    invoke-direct {v0, v1, v2, v9, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_16f

    .line 258
    .end local p6    # "allSolved":Z
    .restart local v2    # "allSolved":Z
    :cond_16d
    move/from16 p6, v2

    .line 266
    .end local v2    # "allSolved":Z
    .restart local p6    # "allSolved":Z
    :goto_16f
    if-lez v6, :cond_3ba

    .line 267
    const/4 v2, 0x0

    .line 268
    .local v2, "needSolverPass":Z
    move/from16 p8, v2

    .end local v2    # "needSolverPass":Z
    .local p8, "needSolverPass":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_17e

    const/4 v2, 0x1

    goto :goto_17f

    :cond_17e
    const/4 v2, 0x0

    .line 270
    .local v2, "containerWrapWidth":Z
    :goto_17f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_18a

    const/16 v17, 0x1

    goto :goto_18c

    :cond_18a
    const/16 v17, 0x0

    :goto_18c
    move/from16 v3, v17

    .line 272
    .local v3, "containerWrapHeight":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    move/from16 v17, v7

    .end local v7    # "optimize":Z
    .local v17, "optimize":Z
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 273
    .local v4, "minWidth":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v7

    move/from16 v22, v4

    .end local v4    # "minWidth":I
    .local v22, "minWidth":I
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 278
    .local v4, "minHeight":I
    const/4 v7, 0x0

    move/from16 v23, v11

    move v11, v7

    move/from16 v7, v22

    move/from16 v22, v8

    move v8, v4

    move/from16 v4, p8

    .end local p8    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    .local v7, "minWidth":I
    .local v8, "minHeight":I
    .local v11, "i":I
    .local v22, "childCount":I
    .local v23, "optimizeWrap":Z
    :goto_1b9
    if-ge v11, v6, :cond_274

    .line 279
    move/from16 p8, v12

    .end local v12    # "widthSize":I
    .local p8, "widthSize":I
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 280
    .local v12, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v24, v13

    .end local v13    # "heightSize":I
    .local v24, "heightSize":I
    instance-of v13, v12, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-nez v13, :cond_1d5

    .line 281
    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 v25, v14

    move/from16 v26, v15

    goto/16 :goto_264

    .line 283
    :cond_1d5
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    .line 284
    .local v13, "preWidth":I
    move/from16 v25, v14

    .end local v14    # "computations":I
    .local v25, "computations":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    .line 285
    .local v14, "preHeight":I
    move/from16 v26, v15

    const/4 v15, 0x1

    .end local v15    # "optimizations":I
    .local v26, "optimizations":I
    invoke-direct {v0, v5, v12, v15}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    move-result v27

    or-int v4, v4, v27

    .line 286
    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v15, :cond_1fb

    .line 287
    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move/from16 v27, v9

    move/from16 v28, v10

    .end local v9    # "startingWidth":I
    .end local v10    # "startingHeight":I
    .local v27, "startingWidth":I
    .local v28, "startingHeight":I
    iget-wide v9, v15, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    const-wide/16 v20, 0x1

    add-long v9, v9, v20

    iput-wide v9, v15, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    goto :goto_1ff

    .line 286
    .end local v27    # "startingWidth":I
    .end local v28    # "startingHeight":I
    .restart local v9    # "startingWidth":I
    .restart local v10    # "startingHeight":I
    :cond_1fb
    move/from16 v27, v9

    move/from16 v28, v10

    .line 289
    .end local v9    # "startingWidth":I
    .end local v10    # "startingHeight":I
    .restart local v27    # "startingWidth":I
    .restart local v28    # "startingHeight":I
    :goto_1ff
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    .line 290
    .local v9, "measuredWidth":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    .line 291
    .local v10, "measuredHeight":I
    if-eq v9, v13, :cond_22f

    .line 292
    invoke-virtual {v12, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 293
    if-eqz v2, :cond_22b

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v15

    if-le v15, v7, :cond_22b

    .line 294
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v15

    move/from16 v29, v4

    .end local v4    # "needSolverPass":Z
    .local v29, "needSolverPass":Z
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 295
    invoke-virtual {v12, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v15, v4

    .line 296
    .local v15, "w":I
    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v7, v4

    .end local v7    # "minWidth":I
    .local v4, "minWidth":I
    goto :goto_22d

    .line 293
    .end local v15    # "w":I
    .end local v29    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    .restart local v7    # "minWidth":I
    :cond_22b
    move/from16 v29, v4

    .line 298
    .end local v4    # "needSolverPass":Z
    .restart local v29    # "needSolverPass":Z
    :goto_22d
    const/4 v4, 0x1

    .end local v29    # "needSolverPass":Z
    .restart local v4    # "needSolverPass":Z
    goto :goto_231

    .line 291
    :cond_22f
    move/from16 v29, v4

    .line 300
    :goto_231
    if-eq v10, v14, :cond_259

    .line 301
    invoke-virtual {v12, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 302
    if-eqz v3, :cond_255

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v15

    if-le v15, v8, :cond_255

    .line 303
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v15

    move/from16 v29, v4

    .end local v4    # "needSolverPass":Z
    .restart local v29    # "needSolverPass":Z
    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 304
    invoke-virtual {v12, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    add-int/2addr v15, v4

    .line 305
    .local v15, "h":I
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v8, v4

    .end local v8    # "minHeight":I
    .local v4, "minHeight":I
    goto :goto_257

    .line 302
    .end local v15    # "h":I
    .end local v29    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    .restart local v8    # "minHeight":I
    :cond_255
    move/from16 v29, v4

    .line 307
    .end local v4    # "needSolverPass":Z
    .restart local v29    # "needSolverPass":Z
    :goto_257
    const/4 v4, 0x1

    .end local v29    # "needSolverPass":Z
    .restart local v4    # "needSolverPass":Z
    goto :goto_25b

    .line 300
    :cond_259
    move/from16 v29, v4

    .line 309
    :goto_25b
    move-object v15, v12

    check-cast v15, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 310
    .local v15, "virtualLayout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->needSolverPass()Z

    move-result v29

    or-int v4, v4, v29

    .line 278
    .end local v9    # "measuredWidth":I
    .end local v10    # "measuredHeight":I
    .end local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v13    # "preWidth":I
    .end local v14    # "preHeight":I
    .end local v15    # "virtualLayout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    :goto_264
    add-int/lit8 v11, v11, 0x1

    move/from16 v12, p8

    move/from16 v13, v24

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v9, v27

    move/from16 v10, v28

    goto/16 :goto_1b9

    .end local v24    # "heightSize":I
    .end local v25    # "computations":I
    .end local v26    # "optimizations":I
    .end local v27    # "startingWidth":I
    .end local v28    # "startingHeight":I
    .end local p8    # "widthSize":I
    .local v9, "startingWidth":I
    .local v10, "startingHeight":I
    .local v12, "widthSize":I
    .local v13, "heightSize":I
    .local v14, "computations":I
    .local v15, "optimizations":I
    :cond_274
    move/from16 v27, v9

    move/from16 v28, v10

    move/from16 p8, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    .line 314
    .end local v9    # "startingWidth":I
    .end local v10    # "startingHeight":I
    .end local v11    # "i":I
    .end local v12    # "widthSize":I
    .end local v13    # "heightSize":I
    .end local v14    # "computations":I
    .end local v15    # "optimizations":I
    .restart local v24    # "heightSize":I
    .restart local v25    # "computations":I
    .restart local v26    # "optimizations":I
    .restart local v27    # "startingWidth":I
    .restart local v28    # "startingHeight":I
    .restart local p8    # "widthSize":I
    const/4 v9, 0x2

    .line 315
    .local v9, "maxIterations":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_282
    if-ge v10, v9, :cond_38c

    .line 316
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_285
    if-ge v11, v6, :cond_364

    .line 317
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 318
    .local v12, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v13, v12, Landroidx/constraintlayout/solver/widgets/Helper;

    if-eqz v13, :cond_297

    instance-of v13, v12, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v13, :cond_2bb

    :cond_297
    instance-of v13, v12, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v13, :cond_29c

    .line 319
    goto :goto_2bb

    .line 321
    :cond_29c
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_2a5

    .line 322
    goto :goto_2bb

    .line 324
    :cond_2a5
    iget-object v13, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v13, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v13, :cond_2b6

    iget-object v13, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v13, v13, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v13, v13, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v13, :cond_2b6

    .line 325
    goto :goto_2bb

    .line 327
    :cond_2b6
    instance-of v13, v12, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v13, :cond_2c5

    .line 328
    nop

    .line 316
    .end local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2bb
    :goto_2bb
    move/from16 v32, v2

    move-object/from16 v30, v5

    move/from16 v29, v6

    const-wide/16 v20, 0x1

    goto/16 :goto_35a

    .line 331
    .restart local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2c5
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    .line 332
    .local v13, "preWidth":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    .line 333
    .local v14, "preHeight":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v15

    .line 335
    .local v15, "preBaselineDistance":I
    move/from16 v29, v6

    const/4 v6, 0x1

    .end local v6    # "sizeDependentWidgetsCount":I
    .local v29, "sizeDependentWidgetsCount":I
    invoke-direct {v0, v5, v12, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    move-result v16

    or-int v4, v4, v16

    .line 336
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v6, :cond_2ed

    .line 337
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    move/from16 v31, v4

    move-object/from16 v30, v5

    .end local v4    # "needSolverPass":Z
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v30, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v31, "needSolverPass":Z
    iget-wide v4, v6, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    const-wide/16 v20, 0x1

    add-long v4, v4, v20

    iput-wide v4, v6, Landroidx/constraintlayout/solver/Metrics;->measuredMatchWidgets:J

    goto :goto_2f3

    .line 336
    .end local v30    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v31    # "needSolverPass":Z
    .restart local v4    # "needSolverPass":Z
    .restart local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_2ed
    move/from16 v31, v4

    move-object/from16 v30, v5

    const-wide/16 v20, 0x1

    .line 340
    .end local v4    # "needSolverPass":Z
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v30    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v31    # "needSolverPass":Z
    :goto_2f3
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    .line 341
    .local v4, "measuredWidth":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    .line 343
    .local v5, "measuredHeight":I
    if-eq v4, v13, :cond_324

    .line 344
    invoke-virtual {v12, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 345
    if-eqz v2, :cond_31e

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v6

    if-le v6, v7, :cond_31e

    .line 346
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v6

    move/from16 v32, v2

    .end local v2    # "containerWrapWidth":Z
    .local v32, "containerWrapWidth":Z
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 347
    invoke-virtual {v12, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    add-int/2addr v6, v2

    .line 348
    .local v6, "w":I
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_320

    .line 345
    .end local v6    # "w":I
    .end local v32    # "containerWrapWidth":Z
    .restart local v2    # "containerWrapWidth":Z
    :cond_31e
    move/from16 v32, v2

    .line 350
    .end local v2    # "containerWrapWidth":Z
    .restart local v32    # "containerWrapWidth":Z
    :goto_320
    const/4 v2, 0x1

    move/from16 v31, v2

    .end local v31    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    goto :goto_326

    .line 343
    .end local v32    # "containerWrapWidth":Z
    .local v2, "containerWrapWidth":Z
    .restart local v31    # "needSolverPass":Z
    :cond_324
    move/from16 v32, v2

    .line 352
    .end local v2    # "containerWrapWidth":Z
    .restart local v32    # "containerWrapWidth":Z
    :goto_326
    if-eq v5, v14, :cond_349

    .line 353
    invoke-virtual {v12, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 354
    if-eqz v3, :cond_347

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    if-le v2, v8, :cond_347

    .line 355
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 356
    invoke-virtual {v12, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    add-int/2addr v2, v6

    .line 357
    .local v2, "h":I
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v8, v6

    .line 359
    .end local v2    # "h":I
    :cond_347
    const/16 v31, 0x1

    .line 361
    :cond_349
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_358

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v2

    if-eq v15, v2, :cond_358

    .line 362
    const/4 v2, 0x1

    move v4, v2

    .end local v31    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    goto :goto_35a

    .line 316
    .end local v2    # "needSolverPass":Z
    .end local v4    # "measuredWidth":I
    .end local v5    # "measuredHeight":I
    .end local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v13    # "preWidth":I
    .end local v14    # "preHeight":I
    .end local v15    # "preBaselineDistance":I
    .restart local v31    # "needSolverPass":Z
    :cond_358
    move/from16 v4, v31

    .end local v31    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    :goto_35a
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v29

    move-object/from16 v5, v30

    move/from16 v2, v32

    goto/16 :goto_285

    .end local v29    # "sizeDependentWidgetsCount":I
    .end local v30    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v32    # "containerWrapWidth":Z
    .local v2, "containerWrapWidth":Z
    .local v5, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "sizeDependentWidgetsCount":I
    :cond_364
    move/from16 v32, v2

    move-object/from16 v30, v5

    move/from16 v29, v6

    const-wide/16 v20, 0x1

    .line 365
    .end local v2    # "containerWrapWidth":Z
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v6    # "sizeDependentWidgetsCount":I
    .end local v11    # "i":I
    .restart local v29    # "sizeDependentWidgetsCount":I
    .restart local v30    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v32    # "containerWrapWidth":Z
    if-eqz v4, :cond_37a

    .line 366
    const-string v2, "intermediate pass"

    move/from16 v5, v27

    move/from16 v6, v28

    .end local v27    # "startingWidth":I
    .end local v28    # "startingHeight":I
    .local v5, "startingWidth":I
    .local v6, "startingHeight":I
    invoke-direct {v0, v1, v2, v5, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 367
    const/4 v2, 0x0

    move v4, v2

    .end local v4    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    goto :goto_37e

    .line 365
    .end local v2    # "needSolverPass":Z
    .end local v5    # "startingWidth":I
    .end local v6    # "startingHeight":I
    .restart local v4    # "needSolverPass":Z
    .restart local v27    # "startingWidth":I
    .restart local v28    # "startingHeight":I
    :cond_37a
    move/from16 v5, v27

    move/from16 v6, v28

    .line 315
    .end local v27    # "startingWidth":I
    .end local v28    # "startingHeight":I
    .restart local v5    # "startingWidth":I
    .restart local v6    # "startingHeight":I
    :goto_37e
    add-int/lit8 v10, v10, 0x1

    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v6, v29

    move-object/from16 v5, v30

    move/from16 v2, v32

    goto/16 :goto_282

    .end local v29    # "sizeDependentWidgetsCount":I
    .end local v30    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v32    # "containerWrapWidth":Z
    .local v2, "containerWrapWidth":Z
    .local v5, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "sizeDependentWidgetsCount":I
    .restart local v27    # "startingWidth":I
    .restart local v28    # "startingHeight":I
    :cond_38c
    move/from16 v32, v2

    move-object/from16 v30, v5

    move/from16 v29, v6

    move/from16 v5, v27

    move/from16 v6, v28

    .line 370
    .end local v2    # "containerWrapWidth":Z
    .end local v10    # "j":I
    .end local v27    # "startingWidth":I
    .end local v28    # "startingHeight":I
    .local v5, "startingWidth":I
    .local v6, "startingHeight":I
    .restart local v29    # "sizeDependentWidgetsCount":I
    .restart local v30    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v32    # "containerWrapWidth":Z
    if-eqz v4, :cond_3ce

    .line 371
    const-string v2, "2nd pass"

    invoke-direct {v0, v1, v2, v5, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 372
    const/4 v2, 0x0

    .line 373
    .end local v4    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    if-ge v4, v7, :cond_3a8

    .line 374
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 375
    const/4 v2, 0x1

    .line 377
    :cond_3a8
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    if-ge v4, v8, :cond_3b2

    .line 378
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 379
    const/4 v2, 0x1

    .line 381
    :cond_3b2
    if-eqz v2, :cond_3ce

    .line 382
    const-string v4, "3rd pass"

    invoke-direct {v0, v1, v4, v5, v6}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_3ce

    .line 266
    .end local v2    # "needSolverPass":Z
    .end local v3    # "containerWrapHeight":Z
    .end local v17    # "optimize":Z
    .end local v22    # "childCount":I
    .end local v23    # "optimizeWrap":Z
    .end local v24    # "heightSize":I
    .end local v25    # "computations":I
    .end local v26    # "optimizations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    .end local v30    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v32    # "containerWrapWidth":Z
    .end local p8    # "widthSize":I
    .local v5, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "sizeDependentWidgetsCount":I
    .local v7, "optimize":Z
    .local v8, "childCount":I
    .local v9, "startingWidth":I
    .local v10, "startingHeight":I
    .local v11, "optimizeWrap":Z
    .local v12, "widthSize":I
    .local v13, "heightSize":I
    .local v14, "computations":I
    .local v15, "optimizations":I
    :cond_3ba
    move-object/from16 v30, v5

    move/from16 v29, v6

    move/from16 v17, v7

    move/from16 v22, v8

    move v5, v9

    move v6, v10

    move/from16 v23, v11

    move/from16 p8, v12

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    .line 386
    .end local v7    # "optimize":Z
    .end local v8    # "childCount":I
    .end local v9    # "startingWidth":I
    .end local v10    # "startingHeight":I
    .end local v11    # "optimizeWrap":Z
    .end local v12    # "widthSize":I
    .end local v13    # "heightSize":I
    .end local v14    # "computations":I
    .end local v15    # "optimizations":I
    .local v5, "startingWidth":I
    .local v6, "startingHeight":I
    .restart local v17    # "optimize":Z
    .restart local v22    # "childCount":I
    .restart local v23    # "optimizeWrap":Z
    .restart local v24    # "heightSize":I
    .restart local v25    # "computations":I
    .restart local v26    # "optimizations":I
    .restart local v29    # "sizeDependentWidgetsCount":I
    .restart local v30    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local p8    # "widthSize":I
    :cond_3ce
    :goto_3ce
    move/from16 v2, v26

    .end local v26    # "optimizations":I
    .local v2, "optimizations":I
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 391
    .end local v2    # "optimizations":I
    .end local v29    # "sizeDependentWidgetsCount":I
    :goto_3d3
    return-wide v18
.end method

.method public updateHierarchy(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .registers 7
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 56
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_3e

    .line 57
    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 58
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_36

    .line 59
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_36

    .line 60
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_36

    .line 61
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_3b

    .line 62
    :cond_36
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 65
    .end local v1    # "i":I
    :cond_3e
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 66
    return-void
.end method
