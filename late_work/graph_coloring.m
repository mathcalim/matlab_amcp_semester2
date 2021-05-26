%%считать информацию, потсроить направленный граф, посчитать входящую
%%степень каждого узла(indegree), раскрасить узлы, сделать размер узлов
%%соответсвующие его степени(размер взять из чата тимса), топ 5 узлов с
%%максимальной степенью, т.е потсроить табличку из степеней(2 столбца:
%%узел, степень), далее функция head(выводит первые i строк таблицы).
%%Отсортировать строчки по убыванию и вывести пять строк.
Game_of_thrones = readtable('g_edges.csv');
GoT_graph = digraph(Game_of_thrones.Source,Game_of_thrones.Target);
plot(GoT_graph)
hold on
deg = indegree(GoT_graph);
p = plot(GoT_graph,'layout','force');
hold on
GoT_graph.Nodes.NodeColors = deg;
p.NodeCData = GoT_graph.Nodes.NodeColors;
colorbar
p.MarkerSize = 2*sqrt(deg-min(deg)+0.2);
table_GoT = table(GoT_graph.Nodes, deg);
Final_table_GoT = sortrows(table_GoT, 'Var2', 'descend');
head(Final_table_GoT, 5)